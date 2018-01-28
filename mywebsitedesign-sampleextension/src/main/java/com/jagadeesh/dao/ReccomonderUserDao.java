package com.jagadeesh.dao;

import java.util.List;

import com.jagadeesh.model.RecommondUser;

//Interface for Partner Recommender System to save the responses and recommend life partners
public interface ReccomonderUserDao {

	public void save(RecommondUser user);
	
	public List<RecommondUser> getUsers(RecommondUser user);
	
	public List<RecommondUser> getRecommendations(List<Integer> list);
}
