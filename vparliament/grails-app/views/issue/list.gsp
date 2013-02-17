
<%@ page import="de.vp.Issue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'issue.label', default: 'Issue')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-issue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="contextItem" href="${createLink(uri: '/')}">parliament</a></li>
				<g:if test="${issueContext.partyId}">
					<li><g:link class="contextItem" controller="party" action="show" params="[id: issueContext.partyId]">
						&gt; party ${issueContext.partyId}
					</g:link></li>
				</g:if>
				<g:if test="${issueContext.areaId}">
					<li><g:link class="contextItem" params="${params}">
						&gt; area ${issueContext.areaId}
					</g:link></li>
				</g:if>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-issue" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'issue.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'issue.description.label', default: 'Description')}" />
					
						<th><g:message code="issue.area.label" default="Area" /></th>
					
						<g:sortableColumn property="status" title="${message(code: 'issue.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${issueInstanceList}" status="i" var="issueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${issueInstance.id}">${fieldValue(bean: issueInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: issueInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: issueInstance, field: "area")}</td>
					
						<td>${fieldValue(bean: issueInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${issueInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
