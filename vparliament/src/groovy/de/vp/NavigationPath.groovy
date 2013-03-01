package de.vp

class NavigationPath {
	private ArrayList<NavigationItem> naviList; //check: Vector?
	
	public NavigationPath() {
		this.naviList = new ArrayList<NavigationItem>();
	}
	
	public List<NavigationItem> getList() {
		return this.naviList;
	}
	
	public addItem(NavigationItem item) {
		naviList.add(item);
	}
	
	/**
	 * removes all items after item,
	 * so that item is the last in the list
	 * @param item
	 * @return
	 */
	public gotoItem(NavigationItem item) {
		//TODO:
		int index = naviList.indexOf(item);
		if (index > -1) {
			naviList.removeRange(index+1, naviList.size());
		}
	}
}
