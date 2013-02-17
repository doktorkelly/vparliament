<%@ page import="de.vp.Issue" %>



<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="issue.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${issueInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="issue.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${issueInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'area', 'error')} ">
	<label for="area">
		<g:message code="issue.area.label" default="Area" />
		
	</label>
	<g:select id="area" name="area.id" from="${de.vp.Area.list()}" optionKey="id" value="${issueInstance?.area?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="issue.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${de.vp.IssueStatusEnum?.values()}" keys="${de.vp.IssueStatusEnum.values()*.name()}" required="" value="${issueInstance?.status?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'parties', 'error')} ">
	<label for="parties">
		<g:message code="issue.parties.label" default="Parties" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="issue.comments.label" default="Comments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${issueInstance?.comments?}" var="c">
    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comment" action="create" params="['issue.id': issueInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'votes', 'error')} ">
	<label for="votes">
		<g:message code="issue.votes.label" default="Votes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${issueInstance?.votes?}" var="v">
    <li><g:link controller="issueVote" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="issueVote" action="create" params="['issue.id': issueInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'issueVote.label', default: 'IssueVote')])}</g:link>
</li>
</ul>

</div>

