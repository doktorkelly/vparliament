package de.vp

import grails.orm.PagedResultList

class IssueController {

    static scaffold = Issue;
	
	def list(Integer max, Long areaId, Long partyId) {
		params.max = Math.min(max ?: 10, 100)
		PagedResultList issueList = Issue.findByContext(partyId, areaId, params);
		Integer issueTotal = issueList.getTotalCount();
		
//		List<Issue> issueList = null;
//		Integer issueTotal = 0;
//		if(partyId || areaId) {
//			issueList = Issue.findByPartyAndAreaId(partyId, areaId, params);
//			issueTotal = issueList.totalCount;
//		}
//		else {
//			issueList = Issue.list(params);
//			issueTotal = Issue.count();
//		}
		log.info(""
			+ "\nissueList: " + issueList
			+ "\nissueTotal: " + issueTotal);
		[
			issueInstanceList: issueList, 
			issueInstanceTotal: issueTotal]
	}
	
}
