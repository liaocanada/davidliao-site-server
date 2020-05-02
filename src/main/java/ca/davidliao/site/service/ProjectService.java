package ca.davidliao.site.service;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.Arrays;
import java.util.Collection;

import ca.davidliao.site.dao.ProjectDao;
import ca.davidliao.site.entity.Project;

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
	
	/** Gets all projects of a given type (e.g. personal or work) */
	public List<Project> getAllProjects(String type) {
		
		return dao.findAll().parallelStream()
				.filter(project -> project.getType().equals(type))
				.collect(Collectors.toList());
	}
	
	/** Gets all projects that contain all or any of the given skills */
	public List<Project> getAllProjects(Collection<String> skillsList, boolean requiresAll) {
		Predicate<Project> filter = requiresAll ? 
				project -> (project.getSkillsNames().containsAll(skillsList)) :
				project -> (project.getSkillsNames().parallelStream().anyMatch(skillsList::contains));
		
		return dao.findAll().parallelStream()
				.filter(filter)
				.collect(Collectors.toList());
	}
}
