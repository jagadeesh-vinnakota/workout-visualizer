package com.jagadeesh.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jagadeesh.model.LoginUser;

//Class for handling data base process during login process
@Repository
public class UserDetailsDaoImpl implements UserDetailsDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public LoginUser findUserByUsername(String name) {
		
		return sessionFactory.getCurrentSession().get(LoginUser.class, name);
		
	}

}
