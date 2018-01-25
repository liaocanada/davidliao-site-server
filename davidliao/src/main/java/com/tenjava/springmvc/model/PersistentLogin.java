package com.tenjava.springmvc.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * A model of the remember-me function.
 */
@Entity
@Table(name="PERSISTENT_LOGINS")
public class PersistentLogin implements Serializable {
	
	private static final long serialVersionUID = 2L;

	@Id
	private String series;

	/**
	 * Associates column in DB to variable
	 */
	@Column(name="USERNAME", unique=true, nullable=false)
	private String username;
	
	/**
	 * Associates column in DB to variable
	 */
	@Column(name="TOKEN", unique=true, nullable=false)
	private String token;
	
	/**
	 * Converts timestamp format in DB to Date format
	 */
	@Temporal(TemporalType.TIMESTAMP)
	private Date last_used;

	
	public String getSeries() {
		return series;
	}

	public void setSeries(String series) {
		this.series = series;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public Date getLast_used() {
		return last_used;
	}

	public void setLast_used(Date last_used) {
		this.last_used = last_used;
	}
}
