package ca.davidliao.site.entity;

public class Skill {

	private final String name;
	private final String colour;
	private final String category;
	private final String bsTagClass;

	public Skill(String name, String colour, String category) {
		this.name = name;
		this.colour = colour;
		this.category = category;

		// TODO change so that it affects element style instead of class
		// since bootstrap has limited colours
		switch (colour) {
		case "blue":
			this.bsTagClass = "label-primary";
			break;
		case "grey":
			this.bsTagClass = "label-default";
			break;
		case "green":
			this.bsTagClass = "label-success";
			break;
		case "red":
			this.bsTagClass = "label-danger";
			break;
		case "yellow":
		case "orange":
			this.bsTagClass = "label-warning";
			break;
		case "light blue":
			this.bsTagClass = "label-info";
			break;
		default:
			this.bsTagClass = "label-secondary";
		}
	}

	@Override
	public String toString() {
		return this.name;
	}
	
	@Override
	public boolean equals(Object other) {
		if (!(other instanceof Skill)) return false;
		
		Skill otherSkill = (Skill) other;
		return name.equals(otherSkill.name);
	}
	
	/* Getters */
	public String getName() {
		return name;
	}

	public String getColour() {
		return colour;
	}

	public String getCategory() {
		return category;
	}

	public String getBsTagClass() {
		return bsTagClass;
	}

}
