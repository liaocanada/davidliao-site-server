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
					"A scalable multi-page web app that allows specific types of business owners to ", 
					"featured.jpg",
					Status.COMPLETED,
					new TreeSet<Skills>(Arrays.asList(JAVASCRIPT, REACT, METEOR, REACT_SEMANTIC_UI, CSS, MONGODB))),
				
			new Project("Company Website", 
					"Some placeholder description", 
					"placeholder.jpg", 
					Status.COMPLETED,
					new TreeSet<Skills>(Arrays.asList(JAVA_8, JSP, GOOGLE_CLOUD_PLATFORM, HTML5, CSS, BOOTSTRAP, TOMCAT))),
			
			new Project("Human Resources Management System", 
					"Some placeholder description", 
					"hrms.jpg", 
					Status.COMPLETED,
					new TreeSet<Skills>(Arrays.asList(JAVA_8, JSP, HTML5, CSS, BOOTSTRAP, TOMCAT, MYSQL))),
			
			new Project("CareerCounsel", 
					"Some placeholder description", 
					"careercounsel.jpg", 
					Status.WORK_IN_PROGRESS,
					new TreeSet<Skills>(Arrays.asList(JAVASCRIPT, REACT, NODE, REACT_SEMANTIC_UI, CSS))),
			
			new Project("Personal Website", 
					"Some placeholder description", 
					"davidliao.jpg", 
					Status.WORK_IN_PROGRESS,
					new TreeSet<Skills>(Arrays.asList(JAVA_8, JSP, GOOGLE_CLOUD_PLATFORM, HTML5, CSS, BOOTSTRAP, TOMCAT)))
			
		);
		
	}
	
	
	public List<Project> findAll() {
		return projects;
	}
	
	public Project findById(int id) {
		return projects.get(id);
	}
}
