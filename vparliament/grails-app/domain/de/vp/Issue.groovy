package de.vp

class Issue {

	String name;
	String description;
	IssueStatusEnum status;
	Area area;
	
	static belongsTo = Party;
	static hasMany = [parties: Party, comments: Comment, votes: IssueVote];
	
    static constraints = {
		name(blank:false);
		description(nullable:true);
		area(nullable:true);
		status(blank:false);
		parties(nullable:true);
		comments(nullable:true);
    }
	
	@Override
	public String toString() {
		return "${name}";
	}
}
