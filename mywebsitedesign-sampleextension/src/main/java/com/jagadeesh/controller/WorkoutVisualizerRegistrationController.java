package com.jagadeesh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jagadeesh.model.UserData;
import com.jagadeesh.service.UserService;

@Controller
//Controller class for Registration process
public class WorkoutVisualizerRegistrationController {

	@Autowired
	private UserService userService;
	
	//for landing workout visualizer registration page
		@GetMapping("visual/register")
		public String createModelObjectForWorkoutVisualApp(ModelMap model)
		{
			model.addAttribute("user",new UserData());
		
			return "visregister";
		}
		
		//For Registering the User
		@PostMapping("visual/registerdatadisplay")
		public String registerDataDisplay(@ModelAttribute("user") UserData userdata, BindingResult result, ModelMap model)
		{
			
			String myName = userdata.getUsername(); 
			
			//user name doesn't exist case.
			if(userService.checkForUserName(myName))
			{
				userService.save(userdata);
			    return "register-data";
			}
			
			//user name exists case
			String name = userdata.getUsername();
			String data = name+" already exists";
			userdata.setUsername(data);
			model.addAttribute("user", userdata);
			return "visregister";
		
		}
}
