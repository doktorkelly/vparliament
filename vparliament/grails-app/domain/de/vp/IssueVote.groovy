package de.vp

class IssueVote {
	IssueVoteChoiceEnum choice;
	IssueVoteWeightEnum weight = IssueVoteWeightEnum.MEDIUM;
	Date dateCreated;
	
	static belongsTo = [actor: Actor, issue: Issue]; 
	
    static constraints = {
		actor(unique: 'issue');
		issue();
		choice(blank:false);
		weight(nullable:true);
		dateCreated(nullable:true);
    }
	
//  TODO:
//	static mapping = {
//		id composite: ['actor', 'issue']
//	}
	
	@Override
	public String toString() {
		return "${actor.name} ${issue.name}";
	}
}
