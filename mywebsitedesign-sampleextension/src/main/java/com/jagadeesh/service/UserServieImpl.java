package com.jagadeesh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jagadeesh.dao.UserDao;
import com.jagadeesh.model.ImageUser;
import com.jagadeesh.model.MonthByMonthResult;
import com.jagadeesh.model.UserData;
import com.jagadeesh.model.WeekByWeekResult;
import com.jagadeesh.model.WorkoutDetails;

@Service

//class for giving services for Workout visualizer app user
public class UserServieImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	//For saving the Workout Visualizer app user
	@Transactional
	@Override
	public void save(UserData user) {
		
		userDao.save(user);
	}

	//service method for saving the workout details of an user
	@Transactional
	@Override
	public void saveWorkoutDetails(WorkoutDetails work) {
		
		userDao.saveWorkoutDetails(work);
		
	}
	
	//Service method for checking for user name while registration process
	@Transactional
	@Override
	public boolean checkForUserName(String name) {
		
		return userDao.checkForUserName(name);
	
	}

	//service method for getting day by data
	@Transactional
	@Override
	public List<WorkoutDetails> getDayByDayData() {
		
		return userDao.getDayByDayData();
	}

	//service method for getting week by week data
	@Transactional
	@Override
	public List<WeekByWeekResult> getWeekByWeekData() {
		return userDao.getWeekByWeekData();
	}

	//Service method for getting month by month data
	@Transactional
	@Override
	public List<MonthByMonthResult> getMonthByMonthData() {
		
		return userDao.getMonthByMonthData();
	}

	@Transactional
	@Override
	public void saveImage(ImageUser imageUser) {
		
		 userDao.saveImage(imageUser);
		
		
	}


	
}
