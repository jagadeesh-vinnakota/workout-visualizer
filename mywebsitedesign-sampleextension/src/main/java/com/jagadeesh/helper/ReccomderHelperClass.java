package com.jagadeesh.helper;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;

import com.jagadeesh.model.RecommondUser;

@Controller

//Helper class for Patner Recommonder System Application
public class ReccomderHelperClass {

	//Getting the ids of top 10 life partners
	public List<Integer> getIds(List<RecommondUser> myList, RecommondUser recUser)
	{
		Map<Integer,Integer> scoresList = new LinkedHashMap<>();
		
		myList.forEach(
				name->
				{
					int score=0;
					score += this.getScore(recUser.getQuestion1(),name.getQuestion1());
					score += this.getScore(recUser.getQuestion2(),name.getQuestion2());
					score += this.getScore(recUser.getQuestion3(),name.getQuestion3());
					score += this.getScore(recUser.getQuestion4(),name.getQuestion4());
					score += this.getScore(recUser.getQuestion5(),name.getQuestion5());
					score += this.getScore(recUser.getQuestion6(),name.getQuestion6());
					score += this.getScore(recUser.getQuestion7(),name.getQuestion7());
					score += this.getScore(recUser.getQuestion8(),name.getQuestion8());
					score += this.getScore(recUser.getQuestion9(),name.getQuestion9());
					score += this.getScore(recUser.getQuestion10(),name.getQuestion10());
					scoresList.put(name.getId(), score);
				}
				);
		
		
		Map<Integer,Integer> scoresListSorted = new LinkedHashMap<>();
		
		scoresList.entrySet().stream()
        .sorted(Map.Entry.<Integer, Integer>comparingByValue().reversed())
        .forEachOrdered(x -> scoresListSorted.put(x.getKey(), x.getValue()));
		
		
		scoresListSorted.forEach(
					(k,v)->
					{
						System.out.println(k+" : "+v);
					}
				);
		
		Set<Integer> demo = scoresListSorted.keySet();
		return new ArrayList<Integer>(demo).subList(0, 10);
	}
	
	//Calculating the user score for every question
	public int getScore(int ques1, int ques2)
	{
		int score = 0;
		if(ques1==ques2)
			score+=10;
		else if(ques1<ques2)
			score+=7;
		else
			score+=5;
		return score;
	}
}
