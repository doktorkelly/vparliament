package de.vp

class Area {
	String name;
	String description;
	
	static hasMany = [parties: Party]
	static belongsTo = Party;

	static constraints = {
		name(blank: false);
		description(nullable:true);
    }
	
	
	@Override
	public String toString() {
		return "${name}";
	}
}
