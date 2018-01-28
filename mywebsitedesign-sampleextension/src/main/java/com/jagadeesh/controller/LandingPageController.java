package com.jagadeesh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jagadeesh.helper.ReccomderHelperClass;
import com.jagadeesh.model.ImageUser;
import com.jagadeesh.model.RecommondUser;
import com.jagadeesh.model.TestUser;
import com.jagadeesh.service.RecommondUserService;
import com.jagadeesh.service.TestUserService;
import com.jagadeesh.service.UserService;

@Controller

//Controller for landing home page of the application
public class LandingPageController {

	@Autowired
	private TestUserService testUserService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private RecommondUserService recService;
	
	@Autowired
	private ReccomderHelperClass helper;
	
	//for landing profile page
	@GetMapping("profile")
	public String showThePage()
	{
		return "testingfile";
	}
	
	//for landing result of public understanding of research project
	@GetMapping("public/research")
	public String getPublicUnderstanding()
	{
		return "publicUnderstanding";
	}
	
	//for landing main page of partner recommonder system 
	@GetMapping("recommonder/main")
	public String showMainPage()
	{
		return "recMain";
	}
	
	
	//for landing recommonder home page
	@GetMapping("recommonder/home")
	public String showRecPage(ModelMap map)
	{
		map.addAttribute("recUser", new RecommondUser());
		return "rechome";
	}
	
	//for displaying the partner recommonders result
	@PostMapping("rec/result")
	public String getReccomondeations(@ModelAttribute("recUser") RecommondUser recUser, ModelMap model)
	{
		
		List<Integer> idsList = helper.getIds(recService.getUsers(recUser),recUser);
		
		List<RecommondUser> finalList = recService.getRecommendations(idsList);
		
		recService.save(recUser);
		model.addAttribute("myResult", finalList);
		return "resultPage";
	}
	
	
	@PostMapping("recommonder/save")
	public String showMyImage(@ModelAttribute("imageUser") ImageUser imageUser)
	{
		System.out.println("--------------------before calling save method--------------");
		userService.saveImage(imageUser);
		System.out.println("------------------After calling save method---------------");
		return "myImagePage";
	}
	
	//for landing workout visualizer home page
	 @GetMapping("visual/home")
		public String visualizerHomePageShow()
		{
			return "vishome";
		}
	
	
	@GetMapping("/test/testpage")
	public String test_testPage(ModelMap model)
	{
		model.addAttribute("testuser", new TestUser());
		return "mytestpage";
	}
	
	
	@PostMapping("saveuser")
	public String saveUserDetails(@ModelAttribute("testuser") TestUser usertestingdb, BindingResult result, ModelMap model)
	{
		testUserService.save(usertestingdb);
		return "mypage";
	}
	
}
