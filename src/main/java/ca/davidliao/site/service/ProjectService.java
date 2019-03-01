package ca.davidliao.site.service;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.Arrays;
import java.util.Collection;

import ca.davidliao.site.dao.ProjectDao;
import ca.davidliao.site.entity.Project;
import ca.davidliao.site.entity.Skills;
import ca.davidliao.site.entity.Project.Status;

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
