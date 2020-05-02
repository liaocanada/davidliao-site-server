package ca.davidliao.site.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import ca.davidliao.site.entity.Project;
import ca.davidliao.site.entity.Skill;
import ca.davidliao.site.service.JsonReader;

// @Repository
public class ProjectDao {

	private List<Project> projects;
//	private static final String PROJECTS_JSON_URL = "https://raw.githubusercontent.com/liaocanada/davidliao-site/master/github-static/projects.json";
//	private static final String SKILLS_JSON_URL = "https://raw.githubusercontent.com/liaocanada/davidliao-site/master/github-static/skills.json";
	private static final String PROJECTS_JSON_URL = "https://raw.githubusercontent.com/liaocanada/davidliao-site/dynamic-projects/github-static/projects.json";
	private static final String SKILLS_JSON_URL = "https://raw.githubusercontent.com/liaocanada/davidliao-site/dynamic-projects/github-static/skills.json";

	public ProjectDao() {
		projects = new ArrayList<Project>();
		loadProjects();
	}

	public List<Project> findAll() {
		return projects;
	}

	public Project findById(int id) {
		return projects.get(id);
	}
	
	private void loadProjects() {
		projects.clear();
		
		// Read JSON data from URL
		JSONArray jsonProjects;
		JSONArray jsonSkills;
		try {
			jsonProjects = JsonReader.readJsonArrayFromUrl(PROJECTS_JSON_URL);
			jsonSkills = JsonReader.readJsonArrayFromUrl(SKILLS_JSON_URL);
		} catch (JSONException | IOException e) {
			e.printStackTrace();
			return;
		}
		
		jsonProjects.forEach(project -> {
			JSONObject projectObject = (JSONObject) project;
			
			// Populate set of skills
			Set<Skill> projectSkills = new HashSet<>();
			projectObject.getJSONArray("skills").forEach(skillStr -> {
				// Linear search skills by name
				for (int i = 0; i < jsonSkills.length(); i++) {
					JSONObject currentSkill = jsonSkills.getJSONObject(i);
					if (currentSkill.getString("name").equals(skillStr)) {
						// When found, add details associated with it, and break
						projectSkills.add(new Skill(
								currentSkill.getString("name"),
								currentSkill.getString("colour"),
								currentSkill.getString("category")
						));
						break;
					}
				}
			});
			
			// Add new project
			projects.add(new Project(
				projectObject.getString("name"), 
				projectObject.getString("description"), 
				projectObject.getString("image"), 
				projectObject.getString("type"), 
				projectObject.getString("category"),
				projectObject.optString("url"), 
				projectSkills
			));
		});
	}

}
