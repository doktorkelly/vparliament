package de.vp

import grails.orm.PagedResultList;
import org.codehaus.groovy.grails.orm.hibernate.GrailsHibernateTemplate;

class Issue {

	String name;
	String description;
	IssueStatusEnum status;
	Area area;
	
	static belongsTo = Party;
	static hasMany = [parties: Party, comments: Comment, votes: IssueVote];
	
    static constraints = {
		name(blank:false);
		description(nullable:true);
		area(nullable:true);
		status(blank:false);
		parties(nullable:true);
		comments(nullable:true);
    }
	
	@Override
	public String toString() {
		return "${name}";
	}
	
	public static List<Issue> findByContext1(Long partyId, Long areaId, Map<Object,Object> params) {
		List<Issue> issueList = new ArrayList<Issue>();
		if (areaId && partyId) {
			issueList = Issue.where {
				area.id == areaId && parties*.id == partyId
			}.list(params);
		}
		return issueList;
	}
	
	public static PagedResultList findByContext(Long partyId, Long areaId, Map<Object,Object> params) {
		def crit = Issue.createCriteria();
		PagedResultList issueList = crit.list(max: params.max, offset: params.offset) {
			and {
				if (partyId) {
					parties {
						eq('id', partyId);
					}
				}
				if (areaId) {
					area {
						eq('id', areaId);
					}
				}
			}
			order('name', 'asc')
		}
		return issueList;
	}	
}












