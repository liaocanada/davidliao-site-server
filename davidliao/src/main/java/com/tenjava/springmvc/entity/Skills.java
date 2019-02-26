package com.tenjava.springmvc.entity;

public enum Skills { 
	
	// Sorted in order of significance
	
	/* Languages */
	JAVA_8("Java 8", "orange", "programming language"), 
	JAVASCRIPT("JavaScript", "yellow", "backend language", "programming language"),

	/* Main frameworks */
	SPRING_MVC("Spring MVC", "green", "backend framework"), 
	REACT("React.js", "blue", "frontend framework"),
	METEOR("Meteor.js", "orange", "backend framework"),
	NODE("Node.js", "grey", "backend framework"),
	ANDROID("Android", "green", "mobile"),
	
	/* Cloud */
	GOOGLE_CLOUD_PLATFORM("GCP", "green", "cloud platform"),
	
	/* View stuff */
	JSP("JSP", "red", "frontend technology"), 
	BOOTSTRAP("Bootstrap", "blue", "frontend framework"),
	REACT_SEMANTIC_UI("React-Semantic UI", "light blue", "frontend framework"),
	HTML5("HTML5", "orange", "frontend language"),
	CSS("CSS", "blue", "frontend language"),
	XML("XML", "grey", "frontend language"),
	
	/* Databases */
	MYSQL("MySQL", "light blue", "database"),
	MONGODB("MongoDB", "green", "database"),
	
	/* Other */
	TOMCAT("Tomcat", "grey", "server");
	
	
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
			this.bsTagClass = "label-default";
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
