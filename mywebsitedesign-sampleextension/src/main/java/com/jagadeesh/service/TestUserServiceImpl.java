package com.jagadeesh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jagadeesh.dao.TestUserDao;
import com.jagadeesh.model.TestUser;

@Service
public class TestUserServiceImpl implements TestUserService {

	@Autowired
	private TestUserDao testuserdao;
	
	@Transactional
	@Override
	public void save(TestUser testuser) {

		testuserdao.save(testuser);
	}

}
