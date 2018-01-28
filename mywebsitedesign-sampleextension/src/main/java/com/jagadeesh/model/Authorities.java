package com.jagadeesh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//Entity class for storing the authorities of an user
@Entity
@Table(name = "authorities")
public class Authorities {

	@Id
	  @Column(name = "AUTHORITY")
	  private String authority;

	  @ManyToOne
	  @JoinColumn(name = "USERNAME")
	  private LoginUser user;

	  public Authorities() {}
	  
	  
	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public LoginUser getUser() {
		return user;
	}

	public void setUser(LoginUser user) {
		this.user = user;
	}
	  
	  
}
