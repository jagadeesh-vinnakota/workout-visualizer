package com.jagadeesh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jagadeesh.model.MonthByMonthResult;
import com.jagadeesh.model.UserData;
import com.jagadeesh.model.WeekByWeekResult;
import com.jagadeesh.model.WorkoutDetails;
import com.jagadeesh.service.UserService;

@Controller

//Controller class for Login process
public class WorkoutVisualizerLoginController {
	
	@Autowired
	private UserService userService;
	
	//for landing workout visualizer login page
		@GetMapping("admin/showMyLoginPage")
		public String visloginPage(ModelMap model)
		{
			model.addAttribute("loginuser", new UserData());
			return "fancy-login";
		}
		
		
		
		//the page url for successfully validated users
		@GetMapping("admin/userpage")
		public String visUserHomePage(@ModelAttribute("loginuser") UserData userlogin, BindingResult result, ModelMap model)
		{
			return "userpage";
		}
		
	
		//for displaying add workout page
		@GetMapping("admin/workoutinput")
		public String workoutDetailsPage(ModelMap model)
		{
		      WorkoutDetails workout = new WorkoutDetails();  
		     
			model.addAttribute("workoutDetails",workout);
			return "addworkout";
		}
		
		//For saving the workout details
		@PostMapping("admin/saveworkoutdetails")
		public String showUserHomePage(@ModelAttribute("workoutDetails") WorkoutDetails work, BindingResult result, ModelMap model)
		{
			User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		      String name = user.getUsername(); //get logged in username
		      work.setUsername(name);
			userService.saveWorkoutDetails(work);
			return "userpage";
		}
		
		
		//for getting last 10 days data.
		@GetMapping("admin/alldata")
		public String getDaysData(ModelMap model)
		{
			List<WorkoutDetails> details = userService.getDayByDayData();
			if(details.size()<2)
			{
				return "nodata";
			}
			
			
			model.addAttribute("myresult",details);
			return "daybyday";
		}
		
		//for getting last 4 weeks data
		@GetMapping("admin/week")
		public String getWeekbyWeekData(ModelMap model)
		{
			List<WeekByWeekResult> details = userService.getWeekByWeekData();
			if(details.size()<2)
			{
				return "nodata";
			}
			model.addAttribute("weekydata", details);
			return "weekbyweek";
		}
		
		//for getting last 12 months data
		@GetMapping("admin/month")
		public String getMonthbyMonthData(ModelMap model)
		{
			List<MonthByMonthResult> details = userService.getMonthByMonthData();
			if(details.size()<2)
			{
				return "nodata";
			}
			model.addAttribute("monthlydata",details);
			return "monthbymonth";
		}
		
}

