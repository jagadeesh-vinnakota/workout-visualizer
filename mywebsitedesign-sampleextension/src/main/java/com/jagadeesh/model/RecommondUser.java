package com.jagadeesh.model;

import java.util.LinkedHashMap;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

//Entity class for saving the details of the partner recommender application
@Entity
@Table(name="recuser_table")
public class RecommondUser {

	@Id
	@GeneratedValue
	@Column(name="ID")
	private int id;
	
	@Column(name="NAME")
	private String firstName;
	
	@Column(name="lastName")
	private String lastName;
	
	@Column(name="AGE")
	private int age;
	
	@Column(name="GENDER")
	private String gender;
	
	@Column(name="COUNTRY")
	private String country;
	
	
	@Column(name="QUESTION1")
	private Integer question1;
	
	@Column(name="QUESTION2")
	private Integer question2;
	
	@Column(name="QUESTION3")
	private Integer question3;
	
	@Column(name="QUESTION4")
	private Integer question4;
	
	@Column(name="QUESTION5")
	private Integer question5;
	
	@Column(name="QUESTION6")
	private Integer question6;
	
	@Column(name="QUESTION7")
	private Integer question7;
	
	@Column(name="QUESTION8")
	private Integer question8;
	
	@Column(name="QUESTION9")
	private Integer question9;
	
	@Column(name="QUESTION10")
	private Integer question10;
	
	@Transient
	private LinkedHashMap<String,String> gendersList;
	@Transient
	private LinkedHashMap<String,String> countriesList;
	@Transient
	private LinkedHashMap<Integer,String> question1Data;
	@Transient
	private LinkedHashMap<Integer,String> question2Data;
	@Transient
	private LinkedHashMap<Integer,String> question3Data;
	@Transient
	private LinkedHashMap<Integer,String> question4Data;
	@Transient
	private LinkedHashMap<Integer,String> question5Data;
	@Transient
	private LinkedHashMap<Integer,String> question6Data;
	@Transient
	private LinkedHashMap<Integer,String> question7Data;
	@Transient
	private LinkedHashMap<Integer,String> question8Data;
	@Transient
	private LinkedHashMap<Integer,String> question9Data;
	@Transient
	private LinkedHashMap<Integer,String> question10Data;
	
	public RecommondUser() {
		
		
		gendersList = new LinkedHashMap<>();
		gendersList.put("male", "MALE");
		gendersList.put("female","FEMALE");
		
		countriesList = new LinkedHashMap<>();
		countriesList.put("afganistan", "AFGANISTAN");
		countriesList.put("argentina","ARGENTINA");
		countriesList.put("australia","AUSTRALIA");
		
		countriesList.put("bahrain","BAHRAIN");
		countriesList.put("brazil","BRAZIL");
		countriesList.put("bulgaria","BULGARIA");
		
		
		countriesList.put("canada","CANADA");
		countriesList.put("china","CHINA");
		countriesList.put("columbia","COLUMBIA");
		
		countriesList.put("denmark","DENMARK");
		
		countriesList.put("egypt","EGYPT");
		
		countriesList.put("france","FRANCE");
		
		countriesList.put("georgia","GEORGIA");
		countriesList.put("greece","GREECE");
		countriesList.put("germany","GERMANY");
		
		countriesList.put("hungary","HUNGARY");
		
		countriesList.put("india","INDIA");
		countriesList.put("ireland","IRELAND");
		countriesList.put("iran","IRAN");
		countriesList.put("iraq","IRAQ");
		countriesList.put("italy","ITALY");
		
		countriesList.put("japan","JAPAN");
		
		countriesList.put("kenya","KENYA");
		
		countriesList.put("latvia","LATVIA");
		
		countriesList.put("madagascar","MADAGASCAR");
		countriesList.put("malaysia","MALAYSIA");
		countriesList.put("iran","IRAN");
		
		countriesList.put("netherlands","NETHERLANDS");
		countriesList.put("newzeland","NEW ZELAND");
		
		countriesList.put("pakistan","PAKISTAN");
		
		countriesList.put("qatar","QATAR");
		
		countriesList.put("russia","RUSSIA");
		
		countriesList.put("singapore","SINGAPORE");
		countriesList.put("srilanka","SRILANKA");
		countriesList.put("switzerland","SWITZERLAND");
		
		countriesList.put("taiwan","TAIWAN");
		countriesList.put("tanzania","TANZANIA");
		countriesList.put("thailand","THAILAND");
		
		countriesList.put("uae","UAE");
		countriesList.put("usa","USA");
		countriesList.put("uk","UK");
		
		
		question1Data = new LinkedHashMap<>();
		question1Data.put(1, "Friendly");
		question1Data.put(2,"Caring");
		question1Data.put(3, "Sharing");
		question1Data.put(4, "Dominant");
		
		
		question2Data = new LinkedHashMap<>();
		question2Data.put(1, "Yes, he/she can");
		question2Data.put(2,"Yes, but limited time");
		question2Data.put(3, "Not at all");
		question2Data.put(4, "It depends on him/her");
		
		
		question3Data = new LinkedHashMap<>();
		question3Data.put(1, "Yes, but share every thing with me");
		question3Data.put(2,"Yes, but should hide form me");
		question3Data.put(3, "No, he/she shouldn't have past");
		question3Data.put(4, "Its up to him/her");
		
		question4Data = new LinkedHashMap<>();
		question4Data.put(1, "Yes");
		question4Data.put(2,"Yes and work together");
		question4Data.put(3, "No");
		question4Data.put(4, "It depends on him/her");
		
		question5Data = new LinkedHashMap<>();
		question5Data.put(1, "I will compramise");
		question5Data.put(2,"He/she should compramise");
		question5Data.put(3, "Depends on the situation");
		question5Data.put(4, "Don't care");
		
		question6Data = new LinkedHashMap<>();
		question6Data.put(1, "Yes");
		question6Data.put(2,"Basic cooking");
		question6Data.put(3, "Super Chef");
		question6Data.put(4, "No");
		
		question7Data = new LinkedHashMap<>();
		question7Data.put(1, "Yes, I will share every thing");
		question7Data.put(2,"Yes, I will share but not every thing");
		question7Data.put(3, "No, I will not share");
		question7Data.put(4, "It depends on thing and situation");
		
		question8Data = new LinkedHashMap<>();
		question8Data.put(1, "Life Partner");
		question8Data.put(2,"Parents");
		question8Data.put(3, "Friends");
		question8Data.put(4, "Myself");
		
		question9Data = new LinkedHashMap<>();
		question9Data.put(1, "Yes, I love to");
		question9Data.put(2,"Yes, but only few places");
		question9Data.put(3, "Yes, but friends also should be with us");
		question9Data.put(4, "Not at all");
		
		question10Data = new LinkedHashMap<>();
		question10Data.put(1, "White");
		question10Data.put(2,"Blue");
		question10Data.put(3, "Green");
		question10Data.put(4, "Red");
		
		
	}

	
	public int getId() {return id;}
	
	public void setId(int id)
	{
		this.id = id;
	}
	
	
	
	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public LinkedHashMap<String, String> getGendersList() {
		return gendersList;
	}

	
	

	public LinkedHashMap<String, String> getCountriesList() {
		return countriesList;
	}


	public Integer getQuestion1() {
		return question1;
	}




	public void setQuestion1(Integer question1) {
		this.question1 = question1;
	}




	public Integer getQuestion2() {
		return question2;
	}




	public void setQuestion2(Integer question2) {
		this.question2 = question2;
	}




	public Integer getQuestion3() {
		return question3;
	}




	public void setQuestion3(Integer question3) {
		this.question3 = question3;
	}




	public Integer getQuestion4() {
		return question4;
	}




	public void setQuestion4(Integer question4) {
		this.question4 = question4;
	}




	public Integer getQuestion5() {
		return question5;
	}




	public void setQuestion5(Integer question5) {
		this.question5 = question5;
	}




	public Integer getQuestion6() {
		return question6;
	}




	public void setQuestion6(Integer question6) {
		this.question6 = question6;
	}




	public Integer getQuestion7() {
		return question7;
	}




	public void setQuestion7(Integer question7) {
		this.question7 = question7;
	}




	public Integer getQuestion8() {
		return question8;
	}




	public void setQuestion8(Integer question8) {
		this.question8 = question8;
	}




	public Integer getQuestion9() {
		return question9;
	}




	public void setQuestion9(Integer question9) {
		this.question9 = question9;
	}




	public Integer getQuestion10() {
		return question10;
	}




	public void setQuestion10(Integer question10) {
		this.question10 = question10;
	}




	public LinkedHashMap<Integer, String> getQuestion1Data() {
		return question1Data;
	}

	public LinkedHashMap<Integer, String> getQuestion2Data() {
		return question2Data;
	}

	public LinkedHashMap<Integer, String> getQuestion3Data() {
		return question3Data;
	}

	public LinkedHashMap<Integer, String> getQuestion4Data() {
		return question4Data;
	}

	public LinkedHashMap<Integer, String> getQuestion5Data() {
		return question5Data;
	}

	public LinkedHashMap<Integer, String> getQuestion6Data() {
		return question6Data;
	}

	public LinkedHashMap<Integer, String> getQuestion7Data() {
		return question7Data;
	}

	public LinkedHashMap<Integer, String> getQuestion8Data() {
		return question8Data;
	}

	public LinkedHashMap<Integer, String> getQuestion9Data() {
		return question9Data;
	}

	public LinkedHashMap<Integer, String> getQuestion10Data() {
		return question10Data;
	}
	
	
	
	
	
}
