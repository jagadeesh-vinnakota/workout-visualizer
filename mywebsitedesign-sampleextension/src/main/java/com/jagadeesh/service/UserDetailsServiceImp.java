package com.jagadeesh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jagadeesh.dao.UserDetailsDao;
import com.jagadeesh.model.LoginUser;

//Class for validating the Workout Visualizer app user
@Service("userDetailsService")
public class UserDetailsServiceImp implements UserDetailsService {

	@Autowired
	private UserDetailsDao userDetailsDao;
	
	@Transactional
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		LoginUser user = userDetailsDao.findUserByUsername(username);
		UserBuilder builder = null;
		
		if(user!=null)
		{
			 builder = org.springframework.security.core.userdetails.User.withUsername(username);
		      builder.disabled(!user.isEnabled());
		      builder.password(user.getPassword());
		      String[] authorities = user.getAuthorities()
		          .stream().map(a -> a.getAuthority()).toArray(String[]::new);

		      builder.authorities(authorities);
		}
		else
		{
			throw new UsernameNotFoundException("User not Found");
		}
		return builder.build();
	}

}
