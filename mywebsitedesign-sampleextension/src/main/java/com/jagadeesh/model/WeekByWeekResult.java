package com.jagadeesh.model;

import java.sql.Date;

//Pojo class for saving the weekly workout result of an user
public class WeekByWeekResult {

	private Date date;
	private int sumOfCalories;
	private int totalTime;
	private String workoutList;

	public WeekByWeekResult(Object ob1, Object ob2, Object ob3,Object ob4)
	{
		System.out.println(ob1.toString());
		System.out.println(ob2.toString());
		System.out.println(ob3.toString());
		System.out.println(ob4.toString());
		date = (Date)ob1;
		sumOfCalories = (int)ob2;
		totalTime = (int)ob3;
		workoutList = (String)ob4;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
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


	public String getWorkoutList() {
		return workoutList;
	}


	public void setWorkoutList(String workoutList) {
		this.workoutList = workoutList;
	}


	
	


	
	
}
