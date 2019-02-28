package com.tenjava.springmvc.dao;

import java.util.Arrays;
import java.util.List;
import java.util.TreeSet;

import com.tenjava.springmvc.entity.Project;
import com.tenjava.springmvc.entity.Project.Status;
import com.tenjava.springmvc.entity.Skills;

import static com.tenjava.springmvc.entity.Skills.*;

// @Repository
public class ProjectDao {
	
	private List<Project> projects;
	
	/** Populates projects array */
	public ProjectDao() {
		
		projects = Arrays.asList(
			new Project("Featured Listings", 
					"A scalable multi-page React web app that allows specific types of business owners to "
					+ "present their featured products to customers. Built for "
					+ "<a class=\"link-dark-yellow\" href=\"https://www.gradea.ca/\">Grade A Labs</a>.", 
					"featured.jpg",
					Status.COMPLETED,
					new TreeSet<Skills>(Arrays.asList(JAVASCRIPT, REACT, METEOR, REACT_SEMANTIC_UI, CSS, MONGODB))),
				
			new Project("Company Website", 
					"A custom website placed on the company's intranet.", 
					"placeholder.jpg", 
					Status.COMPLETED,
					new TreeSet<Skills>(Arrays.asList(JAVA_8, SPRING_MVC, JSP, GOOGLE_CLOUD_PLATFORM, HTML5, CSS, BOOTSTRAP, TOMCAT))),
			
			new Project("Human Resources Management System", 
					"A system that manages employees and their personal information. Users that exist in the "
					+ "database are able to log in. Basic CRUD functions can be performed on "
					+ "either the users themselves (non-admins) or other users (admins) "
					+ "through the web system. Built for "
					+ "<a class=\"link-dark-yellow\" href=\"https://www.inbaytech.com\">inBay Technologies</a>.",
					"hrms.jpg", 
					Status.COMPLETED,
					new TreeSet<Skills>(Arrays.asList(JAVA_8, SPRING_MVC, JSP, HTML5, CSS, BOOTSTRAP, TOMCAT, MYSQL))),
			
			new Project("CareerCounsel", 
					"A single-page web tool that generates statistics based on real-time job listings. "
					+ "This project was started and built in 24 hours at Carleton's hackathon, "
					+ "<a class=\"link-dark-yellow\" href=\"https://cuhacking.com/\">cuHacking</a>. Currently working to "
					+ "improve the data retrieval and analytics.", 
					"careercounsel.jpg", 
					Status.WORK_IN_PROGRESS,
					new TreeSet<Skills>(Arrays.asList(JAVASCRIPT, REACT, NODE, REACT_SEMANTIC_UI, CSS))),
			
			new Project("Personal Website", 
					"My personal website that you are viewing right now! This site was built using Spring MVC and "
					+ "hosted on a VM on Google Cloud Platform. Currently looking into migrating from JSP to the newer "
					+ "Thymeleaf templating engine, and also checking out Amazon AWS.", 
					"davidliao.jpg", 
					Status.WORK_IN_PROGRESS,
					new TreeSet<Skills>(Arrays.asList(JAVA_8, SPRING_MVC, JSP, GOOGLE_CLOUD_PLATFORM, HTML5, CSS, BOOTSTRAP, TOMCAT)))
			
		);
		
	}
	
	
	public List<Project> findAll() {
		return projects;
	}
	
	public Project findById(int id) {
		return projects.get(id);
	}
}
