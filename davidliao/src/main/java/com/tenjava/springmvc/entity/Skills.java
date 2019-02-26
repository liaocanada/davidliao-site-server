package com.tenjava.springmvc.entity;

public enum Skills { 
	
	// Java Web Stuff
	JAVA_8("Java 8", "orange", "backend language"), 
	SPRING_MVC("Spring MVC", "green", "backend framework"), 
	TOMCAT("Tomcat", "orange", "server"),
	
	JSP("JSP", "red", "frontend technology"), 
	HTML5("HTML5", "orange", "frontend language"),
	CSS("CSS", "blue", "frontend language"),
	BOOTSTRAP("Bootstrap", "blue", "frontend framework"),
	
	// JavaScript Web Stuff
	JAVASCRIPT("JavaScript", "yellow", "backend language", "frontend language"),
	NODE("Node.js", "grey", "backend framework"),
	METEOR("Meteor.js", "orange", "backend framework"),
	
	REACT("React.js", "blue", "frontend framework"),
	REACT_SEMANTIC_UI("React-Semantic UI", "light blue", "frontend framework"),
	
	// Mobile Stuff
	ANDROID("Android", "green", "mobile"),
	XML("XML", "grey", "frontend language"),
	
	// Cloud Stuff
	GOOGLE_CLOUD_PLATFORM("GCP", "green", "cloud platform"),
	
	// Databases
	MYSQL("MySQL", "light blue", "database"),
	MONGODB("MongoDB", "green", "database");
	
	
	
	private final String fullName, colour;
	private final String[] types;
	
	private Skills(String fullName, String colour, String... types) {
		this.fullName = fullName;
		this.colour = colour;
		this.types = types;
	}
	
	public String getFullName() {
		return fullName;
	}
	public String getColour() {
		return colour;
	}
	public String getType() {
		return types[0];
	}
	public String[] getTypes() {
		return types;
	}
}
