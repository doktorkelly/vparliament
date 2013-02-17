
<%@ page import="de.vp.Issue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'issue.label', default: 'Issue')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-issue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-issue" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list issue">
			
				<g:if test="${issueInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="issue.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${issueInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="issue.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${issueInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="issue.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:link controller="area" action="show" id="${issueInstance?.area?.id}">${issueInstance?.area?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="issue.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${issueInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueInstance?.parties}">
				<li class="fieldcontain">
					<span id="parties-label" class="property-label"><g:message code="issue.parties.label" default="Parties" /></span>
					
						<g:each in="${issueInstance.parties}" var="p">
						<span class="property-value" aria-labelledby="parties-label"><g:link controller="party" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${issueInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="issue.comments.label" default="Comments" /></span>
					
						<g:each in="${issueInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${issueInstance?.votes}">
				<li class="fieldcontain">
					<span id="votes-label" class="property-label"><g:message code="issue.votes.label" default="Votes" /></span>
					
						<g:each in="${issueInstance.votes}" var="v">
						<span class="property-value" aria-labelledby="votes-label"><g:link controller="issueVote" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${issueInstance?.id}" />
					<g:link class="edit" action="edit" id="${issueInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
