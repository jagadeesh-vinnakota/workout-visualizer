package com.jagadeesh.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

//@Configuration
@EnableWebSecurity

//Configuration For handling security part of an application.
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Bean
	  public BCryptPasswordEncoder passwordEncoder() {
	    return new BCryptPasswordEncoder();
	  };
	 
	
	
	
	  //Method for authenticating the user
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
		
//		UserBuilder users = User.withDefaultPasswordEncoder();
//		auth.inMemoryAuthentication().withUser(users.username("john").password("test").roles("EMPLOYEE"));
//		auth.inMemoryAuthentication().withUser(users.username("mary").password("test").roles("MANAGER"));
//		auth.inMemoryAuthentication().withUser(users.username("susan").password("secret123").roles("ADMIN"));
		
	}	
	
	//for custom login form and validation. for handling web paths, login and logout support
		@Override
		protected void configure(HttpSecurity http) throws Exception {
			
			/*
			http
			.authorizeRequests()                                                                
				.antMatchers("/resources/**", "/signup", "/about").permitAll()                  
				//.antMatchers("/admin/**").permitAll()                                        
				.anyRequest().authenticated()                                                   
				.and()
			.formLogin();
			*/
			
			http
				.antMatcher("/admin/**")
				.authorizeRequests()          //restrict access based on the http servlet request
				.anyRequest().authenticated()  //Any request coming to the app must be authenticated (i.e logged in)
			.and()
				.formLogin()                  //customizing the login process
				.loginPage("/admin/showMyLoginPage") //show ourcustom login form at the request Mapping "/admin/showMyLoginPage"
				.loginProcessingUrl("/admin/authenticateTheUser") //login form should post the data to the url for processing. check userid and password
				.defaultSuccessUrl("/admin/userpage",true)
				.permitAll()    //allow every one to see the login page. No need to be logged in
			.and()
				.logout() //this will automatically redirect to /logout which is provided by the spring security. Then spring security will kill the session and cookies.
					.logoutUrl("/admin/logout")
					.permitAll()
					.and()
					.csrf().disable();
			
		}	
}
