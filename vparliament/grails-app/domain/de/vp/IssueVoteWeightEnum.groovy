package de.vp

enum IssueVoteWeightEnum {
	HIGH(10),
	MEDIUM(5),
	LOW(1)
	
	private final Integer value;
	
	private IssueVoteWeightEnum(Integer value) {
		this.value = value;
	}
	
	public Integer value() {
		return this.value;
	}
}
