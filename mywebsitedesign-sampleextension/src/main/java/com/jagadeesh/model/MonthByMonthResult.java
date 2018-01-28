package com.jagadeesh.model;

//Pojo for handling the monthly workout details of an user
public class MonthByMonthResult {

	private String month;
	private int sumOfCalories;
	private int totalTime;
	private String workoutTypes;
	
	public MonthByMonthResult(Object month, Object sumOfCalories, Object totalTime, Object workoutTypes) {
		
		this.month = (String)month;
		this.sumOfCalories = (int)sumOfCalories;
		this.totalTime = (int)totalTime;
		this.workoutTypes = (String)workoutTypes;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public int getSumOfCalories() {
		return sumOfCalories;
	}

	public void setSumOfCalories(int sumOfCalories) {
		this.sumOfCalories = sumOfCalories;
	}

	public int getTotalTime() {
		return totalTime;
	}

	public void setTotalTime(int totalTime) {
		this.totalTime = totalTime;
	}

	public String getWorkoutTypes() {
		return workoutTypes;
	}

	public void setWorkoutTypes(String workoutTypes) {
		this.workoutTypes = workoutTypes;
	}
	
	
	
}
