package de.vp

import org.apache.commons.lang.builder.HashCodeBuilder;

class NavigationItem {
	String name;
	String url;
	
	NavigationItem(String name, String url) {
		this.name = name;
		this.url = url;
	}	
	
	@Override
	boolean equals(other) {
		if (!(other instanceof NavigationItem)) {
			return false;
		}
		return 
			this.name == other.name &&
			this.url == other.url;
	}
	
	@Override
	int hashCode() {
		return new HashCodeBuilder().
			append(name).
			append(url).
			toHashCode();
	}
}
