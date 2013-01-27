package de.vp

class Issue {

	String name;
	String description;
	
	static belongsTo = Party;
	static hasMany = [parties: Party];
	
    static constraints = {
		name(blank:false);
		description(nullable:true);
    }
}
