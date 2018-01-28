package com.jagadeesh.model;


import java.sql.Date;
import java.util.LinkedHashMap;

import javax.persistence.Column;
import javax.persistence.ColumnResult;
import javax.persistence.ConstructorResult;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.SqlResultSetMapping;
import javax.persistence.SqlResultSetMappings;
import javax.persistence.Table;
import javax.persistence.Transient;





@SqlResultSetMappings({

	@SqlResultSetMapping(
        name = "AuthorValueMapping",
        classes = @ConstructorResult(
                targetClass =WeekByWeekResult.class,
                columns = {
                    @ColumnResult(name = "weekdate",type=Date.class),
                    @ColumnResult(name = "weekcalories",type=Integer.class),
                    @ColumnResult(name = "weektime",type=Integer.class),
                    @ColumnResult(name = "weeklistdata",type=String.class)
                    })
        ),
	
	@SqlResultSetMapping(
	        name = "MonthlyDataMapping",
	        classes = @ConstructorResult(
	                targetClass =MonthByMonthResult.class,
	                columns = {
	                    @ColumnResult(name = "weekdate",type=String.class),
	                    @ColumnResult(name = "weekcalories",type=Integer.class),
	                    @ColumnResult(name = "weektime",type=Integer.class),
	                    @ColumnResult(name = "weeklistdata",type=String.class)
	                    })
	        )
	

})


//Entity class for saving the workout details of an user
@Entity(name="WorkoutDetails")
@Table(name="workout_details")
public class WorkoutDetails {


	@Id
	@GeneratedValue
	@Column(name="ID")
	private int id;
	
	@Column(name="USERNAME")
	private String username;
	
	@Column(name="WORKOUT_TYPE")
	private String workoutType;
	
	@Column(name="TIME")
	private int time;
	
	@Column(name="DATE")
	private Date date;
	
	@Column(name="CALORIES_SPENT")
	private int caloriesSpent;
	
	@Transient
	private LinkedHashMap<String,String> workoutlist;
	
	public WorkoutDetails() 
	{
		 workoutlist = new LinkedHashMap<>();
			workoutlist.put("running","RUNNING");
			workoutlist.put("walking","WALKING");
			workoutlist.put("chest","CHEST");
			workoutlist.put("shoulder","SHOULDER");
			workoutlist.put("back","BACK");
			workoutlist.put("legs","LEGS");
			workoutlist.put("biceps","BICEPS");
			workoutlist.put("triceps","TRICEPS");
			workoutlist.put("core","CORE");
			workoutlist.put("dance","DANCE");
	}


	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getWorkoutType() {
		return workoutType;
	}

	public void setWorkoutType(String workoutType) {
		this.workoutType = workoutType;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getCaloriesSpent() {
		return caloriesSpent;
	}

	public void setCaloriesSpent(int caloriesSpent) {
		this.caloriesSpent = caloriesSpent;
	}




	public LinkedHashMap<String, String> getWorkoutlist() {
		return workoutlist;
	}
	
	
}
