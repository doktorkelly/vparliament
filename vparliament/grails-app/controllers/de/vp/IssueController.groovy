package de.vp

import grails.orm.PagedResultList

class IssueController {

    static scaffold = Issue;
	
	def list(Integer max, Long partyId, Long areaId) {
		params.max = Math.min(max ?: 10, 100)
		PagedResultList issueList = Issue.findByContext(partyId, areaId, params);
		Integer issueTotal = issueList.getTotalCount();
		
		NavigationPath naviPath = session.naviPath ?: new NavigationPath();
		String name = "area" + 5;
//		String url = request.forwardURI;
		String url = request.getRequestURI();
		NavigationItem naviItem = new NavigationItem(name, url);
		naviPath.addItem(naviItem);
		session.naviPath = naviPath; //check: obsolete?
		
		log.info(""
			+ "\nissueList: " + issueList
			+ "\nissueTotal: " + issueTotal
			+ "\nnaviPath: " + naviPath);
		[
			issueInstanceList: issueList, 
			issueInstanceTotal: issueTotal,
			naviPath: naviPath 
		]
	}
	
}
