package com.jagadeesh.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jagadeesh.model.TestUser;

@Repository
public class TestUserDaoimpl implements TestUserDao{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void save(TestUser testuser) {
		
		sessionFactory.getCurrentSession().save(testuser);
	}

	
}
