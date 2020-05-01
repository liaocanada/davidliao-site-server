package ca.davidliao.site.entity;

import java.util.Set;

public class Project {
	
	private static int nextId = 1;
	
	private final int id;
	private final String name;
	private final String description;
	private final String imageUrl;
	private final String type;
	private final String category;
	private final String url;
	private final Set<Skill> skills;

	public Project(String name, String description, String imageUrl, String type, String category, String url,
			Set<Skill> skills) {
		super();
		this.id = nextId++;
		this.name = name;
		this.description = description;
		this.imageUrl = imageUrl;
		this.type = type;
		this.category = category;
		this.url = url;
		this.skills = skills;
	}
	
	@Override
	public String toString() {
		return "Project " + name + " making use of " + skills;
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
	public String getImageUrl() {
		return imageUrl;
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
