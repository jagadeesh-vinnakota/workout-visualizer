package com.jagadeesh.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.jagadeesh.model.Authorities;
import com.jagadeesh.model.ImageUser;
import com.jagadeesh.model.LoginUser;
import com.jagadeesh.model.MonthByMonthResult;
import com.jagadeesh.model.UserData;
import com.jagadeesh.model.WeekByWeekResult;
import com.jagadeesh.model.WorkoutDetails;

@Repository

//Class for handling data base requests of the workout visualizer app 
public class UserDaoimpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveImage(ImageUser imageUser)
	{
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(imageUser);	
	}
	
	
	//For saving the details of an user of the Workout visualzer app into data base
	@Override
	public void save(UserData user) {
		
	Session currentSession = sessionFactory.getCurrentSession();
	currentSession.saveOrUpdate(user);
	LoginUser loginUser = new LoginUser();
	loginUser.setUsername(user.getUsername());
	loginUser.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
	loginUser.setEnabled(true);
	Authorities authorities = new Authorities();
	authorities.setAuthority("USER_ROLE");
	loginUser.addAuthorities(authorities);
	currentSession.saveOrUpdate(loginUser);
	
	}

	@Override
	//For saving the workout details of an user in to data base
	public void saveWorkoutDetails(WorkoutDetails work) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(work);
		
	}

	//For checking username existance while registration
	
	@Override
	public boolean checkForUserName(String name) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		//System.out.println("----------------before executing query------------------");
		
		UserData myUser = currentSession.get(UserData.class, name);
		
		//System.out.println("----------------after executing query------------------");
		
		try
		{
				if(myUser.getUsername().length()==0)
				{
					System.out.println("-----------------error in if condition while retreving value");
					return true;
				}
		}
		catch(Exception ex)
		{
			return true;
		}
			return false;
	}

	
	
	//For getting last 10 days data from present day
	
	@Override
	public List<WorkoutDetails> getDayByDayData() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	      String name = user.getUsername(); //get logged in username
		
		String sql = "select * from workout_details w where w.username = :username and w.date<= curdate() group by(w.date) order by(w.date) DESC limit 12;";
		Query query = currentSession.createNativeQuery(sql,WorkoutDetails.class);
		query.setParameter("username", name);
		
		@SuppressWarnings("unchecked")
		List<WorkoutDetails> details = query.getResultList();
		
		for(WorkoutDetails d:details)
		{
			System.out.println("-----------calories: "+d.getCaloriesSpent() +"--------------------time:"+d.getTime()+"");
		}
		return details;
	}
	
	
	
	
	
	//For getting last four weeks data from present day
	
	@Override
	public List<WeekByWeekResult> getWeekByWeekData()
	{
		
Session currentSession = sessionFactory.getCurrentSession();
		
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	      String name = user.getUsername(); //get logged in username
		
		String sql = "select w.DATE as weekdate, sum(w.CALORIES_SPENT) as weekcalories, sum(w.TIME) as weektime, group_concat(w.WORKOUT_TYPE) as weeklistdata from workout_details as w where w.username = :username and w.date<= curdate() group by WEEK(w.date),YEAR(w.date),MONTH(w.date) order by w.date DESC limit 12;";
		Query query = currentSession.createNativeQuery(sql,"AuthorValueMapping");
		query.setParameter("username", name);
		
		@SuppressWarnings("unchecked")
		List<WeekByWeekResult> details = query.getResultList();
		
		for(WeekByWeekResult d:details)
		{
			System.out.println("-----------calories: "+d.getSumOfCalories() +"--------------------time:"+d.getTotalTime()+"---"
					+ "--------Date:"+d.getDate()+"------------Workouts:");
		}
		return details;
	}
	
	
	
	//For getting last 4 months data from present month
	
	@Override
	public List<MonthByMonthResult> getMonthByMonthData()
	{
		
Session currentSession = sessionFactory.getCurrentSession();
		
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	      String name = user.getUsername(); //get logged in username
		
		String sql = "select MONTHNAME(w.DATE) as weekdate, sum(w.CALORIES_SPENT) as weekcalories, sum(w.TIME) as weektime, group_concat(w.WORKOUT_TYPE) as weeklistdata from workout_details as w where w.username = :username and w.date<= curdate() group by MONTH(w.date),YEAR(w.date) order by w.date DESC limit 12;";
		Query query = currentSession.createNativeQuery(sql,"MonthlyDataMapping");
		query.setParameter("username", name);
		
		@SuppressWarnings("unchecked")
		List<MonthByMonthResult> details = query.getResultList();
		
		for(MonthByMonthResult d:details)
		{
			System.out.println("-----------calories: "+d.getSumOfCalories() +"--------------------time:"+d.getTotalTime()+"---"
					+ "--------Date:"+d.getMonth()+"------------Workouts:"+d.getWorkoutTypes());
		}
		return details;
	}
	

}
