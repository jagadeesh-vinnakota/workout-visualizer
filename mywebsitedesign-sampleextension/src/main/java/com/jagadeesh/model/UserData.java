package com.jagadeesh.model;

import java.util.LinkedHashMap;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

//Emtity class for saving the user of the Workout Visualizer application
@Entity
@Table(name= "users_table")

public class UserData {
	
	@Column(name="EMAIL")
	private String email;
	
	@Id
	@Column(name="USERNAME",unique=true)
	private String username;
	
	@Column(name="PASSWORD")
	private String password;
	
	@Column(name="CNFRM_PASSWORD")
	private String cnfpassword;
	
	@Column(name="FIRST_NAME")
	private String firstname;
	
	@Column(name="LAST_NAME")
	private String lastname;
	
	@Column(name="GENDER")
	private String gender;
	
	@Column(name="AGE")
	private int age;
	
	@Column(name="HEIGHT")
	private int height;
	
	@Column(name="WEIGHT")
	private int weight;
	
	@Column(name="APT_NUMBER")
	private String aptnumber;
	
	@Column(name="STREET")
	private String street;
	
	@Column(name="TOWN")
	private String town;
	
	@Column(name="STATE")
	private String state;
	
	@Column(name="COUNTRY")
	private String country;
	
	@Column(name="ZIP")
	private int zip;
	
	@Transient
	private LinkedHashMap<String,String> genderslist;
	
	public UserData()
	{
		genderslist = new LinkedHashMap<>();
		genderslist.put("male","MALE");
		genderslist.put("female","FEMALE");
	}
	

	public LinkedHashMap<String, String> getGenderslist() {
		return genderslist;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCnfpassword() {
		return cnfpassword;
	}
	public void setCnfpassword(String cnfpassword) {
		this.cnfpassword = cnfpassword;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getAptnumber() {
		return aptnumber;
	}
	public void setAptnumber(String aptnumber) {
		this.aptnumber = aptnumber;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getTown() {
		return town;
	}
	public void setTown(String town) {
		this.town = town;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getZip() {
		return zip;
	}
	
	public void setZip(int zip) {
		this.zip = zip;
	}
	
	
	
}
