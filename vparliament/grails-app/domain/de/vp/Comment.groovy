package de.vp

class Comment {
	String title;
	String text;
	Issue issue;
	
	static belongsTo = Issue;
	
    static constraints = {
		title(blank:false);
		text(blank:false);
    }
	
	@Override
	public String toString() {
		return "${title}";
	}
}
