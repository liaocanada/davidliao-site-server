package com.tenjava.springmvc.dao;

import java.util.Arrays;
import java.util.List;
import java.util.TreeSet;

import com.tenjava.springmvc.entity.Project;
import com.tenjava.springmvc.entity.Project.Status;
import com.tenjava.springmvc.entity.Skills;

import static com.tenjava.springmvc.entity.Skills.*;

/* */
public class ProjectDao {
	
	private List<Project> projects;
	
	/** Populates projects array */
	public ProjectDao() {
		
		projects = Arrays.asList(
			new Project("Human Resources Management System", 
					"Some placeholder description", 
					"url", 
					Status.COMPLETED,
					new TreeSet<Skills>(Arrays.asList(JAVA_8, JSP, HTML5, CSS, BOOTSTRAP, TOMCAT, MYSQL))),
				
			new Project("Company Website", 
					"Some placeholder description", 
					"url", 
					Status.COMPLETED,
					new TreeSet<Skills>(Arrays.asList(JAVA_8, JSP, GOOGLE_CLOUD_PLATFORM, HTML5, CSS, BOOTSTRAP, TOMCAT))),
			
			new Project("Featured Listings", 
					"Some placeholder description", 
					"url", 
					Status.COMPLETED,
					new TreeSet<Skills>(Arrays.asList(JAVASCRIPT, REACT, METEOR, REACT_SEMANTIC_UI, CSS, MONGODB))),
			
			new Project("CareerCounsel", 
					"Some placeholder description", 
					"url", 
					Status.WORK_IN_PROGRESS,
					new TreeSet<Skills>(Arrays.asList(JAVASCRIPT, REACT, NODE, REACT_SEMANTIC_UI, CSS))),
			
			new Project("Personal Website", 
					"Some placeholder description", 
					"url", 
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
