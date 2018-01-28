package com.jagadeesh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jagadeesh.dao.ReccomonderUserDao;
import com.jagadeesh.model.RecommondUser;

//Class for saving the details and responses of user. Also has services for recommending
@Service
public class RecommondUserServiceImpl implements RecommondUserService {

	@Autowired
	private ReccomonderUserDao userDao;
	
	//Service method for saving the user of Recommender app
	@Transactional
	@Override
	public void save(RecommondUser user) {

		userDao.save(user);
	}

	//Service method for getting all the users from data base for recommender app
	@Transactional
	@Override
	public List<RecommondUser> getUsers(RecommondUser user) {
		return userDao.getUsers(user);
	}

	//Service method for getting all the recommendations of an user 
	@Transactional
	@Override
	public List<RecommondUser> getRecommendations(List<Integer> list) {
		
		return userDao.getRecommendations(list);
	}

	
	
	
}
