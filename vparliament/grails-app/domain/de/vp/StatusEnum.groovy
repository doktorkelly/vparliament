package de.vp

enum StatusEnum {
	INWORK("in work"),
	FINISHED("finished")
	
	private final String value;
	
	private StatusEnum(String value) {
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
