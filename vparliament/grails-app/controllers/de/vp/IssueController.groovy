package de.vp

import grails.orm.PagedResultList

class IssueController {

    static scaffold = Issue;
	
	def list(Integer max, Long partyId, Long areaId) {
		params.max = Math.min(max ?: 10, 100)
		PagedResultList issueList = Issue.findByContext(partyId, areaId, params);
		Integer issueTotal = issueList.getTotalCount();
		IssueContext issueContext = IssueContext.fromParams(params);
		log.info(""
			+ "\nissueList: " + issueList
			+ "\nissueTotal: " + issueTotal
			+ "\nissueContext: " + issueContext);
		[
			issueInstanceList: issueList, 
			issueInstanceTotal: issueTotal,
			issueContext: issueContext 
		]
	}
	
}

class IssueContext {
	Long partyId;
	Long areaId;
	
	static IssueContext fromParams(Map<Object,Object> params) {
		IssueContext context = new IssueContext();
		context.partyId = params?.partyId?.toLong();
		context.areaId = params?.areaId?.toLong();
		return context;
	}
	
	List<Long> toList() {
		return [ partyId, areaId ];
	}
	
	
}