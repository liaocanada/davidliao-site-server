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
	
	
	private final String fullName, colour, bsTagClass;
	private final String[] types;
	
	private Skills(String fullName, String colour, String... types) {
		this.fullName = fullName;
		this.colour = colour;
		this.types = types;
		
		// TODO change so that it affects element style instead of class
		switch(colour) {
		case "blue":
			this.bsTagClass = "label-primary";
			break;
		case "grey":
			this.bsTagClass = "label-secondary";
			break;
		case "green":
			this.bsTagClass = "label-success";
			break;
		case "red":
			this.bsTagClass = "label-danger";
			break;
		case "yellow":
		case "orange":
			this.bsTagClass = "label-warning";
			break;
		case "light blue":
			this.bsTagClass = "label-info";
			break;
		default:
			this.bsTagClass = "label-secondary";
		}
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
	public String getBsTagClass() {
		return bsTagClass;
	}
	
}
