package de.vp

class IssueController {

    static scaffold = Issue;
	
	def list(Integer max, Long areaId, Long partyId) {
		params.max = Math.min(max ?: 10, 100)
		List<Issue> issueList = null;
		if (areaId && partyId) {
			issueList = Issue.where {
				area.id == areaId && parties*.id == partyId
			}.list();
		}
		else {
			issueList = Issue.list(params);
		}
		[
			issueInstanceList: issueList, 
			issueInstanceTotal: issueList.size()]
	}
	
}
