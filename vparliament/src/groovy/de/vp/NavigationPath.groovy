package de.vp

import java.util.Iterator;

class NavigationPath implements Iterable<NavigationItem> {
	private ArrayList<NavigationItem> naviList; //check: Vector?
	
	public NavigationPath() {
		this.naviList = new ArrayList<NavigationItem>();
	}
	
	public List<NavigationItem> getList() {
		return this.naviList;
	}
	
	public addItem(NavigationItem item) {
		if (!naviList.contains(item)) {
			naviList.add(item);
		}
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
		if (index > -1 && index < naviList.size()) {
			naviList.removeRange(index+1, naviList.size());
		}
	}
	
	public int size() {
		return naviList.size();
	}

	@Override
	public Iterator<NavigationItem> iterator() {
		return naviList.iterator();
	}
	
	@Override
	public String toString() {
		String result = naviList.
			collect { x -> x.toString(); }.
			join("\n");
		return "\n" + result;
	};
}





