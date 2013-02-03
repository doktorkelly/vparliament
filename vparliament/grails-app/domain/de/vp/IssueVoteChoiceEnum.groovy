package de.vp

enum IssueVoteChoiceEnum {
	AGREE("yes"),
	DISAGREE("no")
	
	private final String value;
	
	private IssueVoteChoiceEnum(String value) {
		this.value = value;
	}
	
	@Override
	public String toString() {
		return this.value;
	}
}
