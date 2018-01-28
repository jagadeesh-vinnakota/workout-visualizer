package com.jagadeesh.service;

import java.util.List;

import com.jagadeesh.model.ImageUser;
import com.jagadeesh.model.MonthByMonthResult;
import com.jagadeesh.model.UserData;
import com.jagadeesh.model.WeekByWeekResult;
import com.jagadeesh.model.WorkoutDetails;

//Interface for performing Workout Visualizer app services
public interface UserService {

	public void save(UserData user);
	
	public void saveWorkoutDetails(WorkoutDetails work);
	
	public boolean checkForUserName(String name);
	
	public List<WorkoutDetails> getDayByDayData();
	
	public List<WeekByWeekResult> getWeekByWeekData();
	
	public List<MonthByMonthResult> getMonthByMonthData();
	
	public void saveImage(ImageUser imageUser);
}
