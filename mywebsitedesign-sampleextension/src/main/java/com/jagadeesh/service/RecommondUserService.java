package com.jagadeesh.service;

import java.util.List;

import com.jagadeesh.model.RecommondUser;

//Interface for saving and recommending services for partner recommender app
public interface RecommondUserService {

	public void save(RecommondUser user);
	
	public List<RecommondUser> getUsers(RecommondUser user);
	
	public List<RecommondUser> getRecommendations(List<Integer> list);
}
