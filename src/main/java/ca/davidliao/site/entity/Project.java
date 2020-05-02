package ca.davidliao.site.entity;

import java.util.Set;
import java.util.stream.Collectors;

public class Project {
	
	private static int nextId = 1;
	
	private final int id;
	private final String name;
	private final String description;
	private final String image;
	private final String type;
	private final String category;
	private final String url;
	private final Set<Skill> skills;

	public Project(String name, String description, String image, String type, String category, String url,
			Set<Skill> skills) {
		super();
		this.id = nextId++;
		this.name = name;
		this.description = description;
		this.image = image;
		this.type = type;
		this.category = category;
		this.url = url;
		this.skills = skills;
		
//		if (url == null || url.equals("")) this.url = 
	}
	
	@Override
	public String toString() {
		return "Project " + name + " making use of " + skills;
	}
	
	public Set<String> getSkillsNames() {
		return skills.stream().map(skill -> skill.getName()).collect(Collectors.toSet());
	}
	
	/* Getters */
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getDescription() {
		return description;
	}
	public String getImage() {
		return image;
	}
	public String getType() {
		return type;
	}
	public String getCategory() {
		return category;
	}
	public String getUrl() {
		return url;
	}
	public Set<Skill> getSkills() {
		return skills;
	}	
}
