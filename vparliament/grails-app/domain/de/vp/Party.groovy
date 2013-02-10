package de.vp

class Party {
	
	String name;
	String description;
	
	static hasMany = [issues: Issue];

    static constraints = {
		name(blank: false);
		description(nullable:true);
		issues(nullable:true);
    }
	
	@Override
	public String toString() {
		return "${name}";
	}
}
