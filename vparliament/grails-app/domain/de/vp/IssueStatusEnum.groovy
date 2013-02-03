package de.vp

enum IssueStatusEnum {
	INWORK("in work"),
	FINISHED("finished")
	
	private final String value;
	
	private IssueStatusEnum(String value) {
		this.value = value;
	}
	
	public String value() {
		return this.value;
	}
	
	@Override
	public String toString() {
		return value;
	}
}
