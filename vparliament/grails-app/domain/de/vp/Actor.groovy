package de.vp

class Actor {
	String name;
	String lastName;
	String firstName;
	
	static hasMany = [votes: IssueVote];
	
    static constraints = {
		name(blank:false);
		lastName(nullable:true);
		firstName(nullable:true);
    }
	
	@Override
	public String toString() {
		return "${name}";
	}
}
