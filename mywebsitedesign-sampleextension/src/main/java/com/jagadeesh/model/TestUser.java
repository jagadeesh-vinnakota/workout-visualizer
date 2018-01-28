package com.jagadeesh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TestUser_Tbl")
public class TestUser {

	@Id
	@GeneratedValue
	@Column(name="UID")
	private long id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="PASS")
	private String pass;
	
	public TestUser() {}

	
	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
}
