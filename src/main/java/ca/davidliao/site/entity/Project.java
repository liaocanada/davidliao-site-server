package ca.davidliao.site.entity;

import java.util.Set;

/** A basic Entity object (no database connected yet) */
public class Project {
	
	public enum Status { COMPLETED, WORK_IN_PROGRESS, TO_DO }
	
	private static int idCount = 0;
	
	private int id;
	private String title;
	private String description;
	private String imageUrl;
	private Status status;
	private Set<Skills> skills;
	// TODO private LocalDate startDate;
	// private LocalDate endDate;
	// privat String company;
	
	public Project(String title, String description, String imageUrl, Status status, Set<Skills> skills) {
		this.id = idCount++;
		this.title = title;
		this.description = description;
		this.imageUrl = imageUrl;
		this.status = status;
		this.skills = skills;
	}
	
	
	/* Getters and setters */
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	public Set<Skills> getSkills() {
		return skills;
	}
	public void setSkills(Set<Skills> skills) {
		this.skills = skills;
	}
	
	public int getId() {
		return id;
	}
	
		
}
