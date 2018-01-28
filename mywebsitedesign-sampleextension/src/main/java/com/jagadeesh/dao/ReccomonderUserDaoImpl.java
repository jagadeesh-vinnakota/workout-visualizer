package com.jagadeesh.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jagadeesh.model.RecommondUser;

//Class for saving the responses of user and getting recommendations
@Repository
public class ReccomonderUserDaoImpl implements ReccomonderUserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	//For saving the details and response of the user
	public void save(RecommondUser user) {
	
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(user);
	}

	@Override
	//For getting all the users depending on the gender for recommendations
	public List<RecommondUser> getUsers(RecommondUser user) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		Query query = currentSession.createQuery("from RecommondUser r where r.gender = :gender and (r.firstName != :firstName and r.lastName != :lastName)");
		
		if(user.getGender().contentEquals("male"))
			query.setParameter("gender", "female");
		else
			query.setParameter("gender", "male");
		
		query.setParameter("firstName", user.getFirstName());
		query.setParameter("lastName", user.getLastName());
		
		
		@SuppressWarnings("unchecked")
		List<RecommondUser> users = query.getResultList();
		//System.out.println("-----------------------rows returned:"+users.size()+"-------------------------------------");
		return users;
	}

	@Override
	//Getting the 10 life partner recommendations
	public List<RecommondUser> getRecommendations(List<Integer> list) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		String hql = "from RecommondUser r where r.id in :my_id";
		
		@SuppressWarnings("unchecked")
		List<RecommondUser> users = currentSession.createQuery(hql).setParameterList("my_id", list).getResultList();
	
		return users;
	}
	
	
	

}
