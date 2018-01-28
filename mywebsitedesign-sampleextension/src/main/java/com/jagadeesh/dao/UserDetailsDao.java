package com.jagadeesh.dao;

import com.jagadeesh.model.LoginUser;

//Interface used for Login process of Workout Visualizer application
public interface UserDetailsDao {

	LoginUser findUserByUsername(String name); 
}
