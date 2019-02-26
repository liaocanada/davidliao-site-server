package com.tenjava.springmvc.service;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;
import java.util.stream.Collectors;
import java.util.Arrays;
import java.util.Collection;

import com.tenjava.springmvc.dao.ProjectDao;
import com.tenjava.springmvc.entity.Project;
import com.tenjava.springmvc.entity.Project.Status;
import com.tenjava.springmvc.entity.Skills;

@Service
public class ProjectService {
	
	// @Autowired
	private ProjectDao dao;
	
	public ProjectService() {
		dao = new ProjectDao();
	}
	
	public List<Project> getAllProjects() {
		return dao.findAll();
	}
	
	public List<Project> getAllProjects(Status status) {
		
		return dao.findAll().parallelStream()
				.filter(project -> (project.getStatus() == status))
				.collect(Collectors.toList());
	}
	
	public List<Project> getAllProjects(Skills... skills) {
		final Collection<Skills> skillsList = Arrays.asList(skills);
		Predicate<Project> usesSkill = project -> (project.getSkills().containsAll(skillsList));
		
		return dao.findAll().parallelStream()
				.filter(usesSkill)
				.collect(Collectors.toList());
	}
}
