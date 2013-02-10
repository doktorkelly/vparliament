<%@ page import="de.vp.Party" %>



<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="party.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${partyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="party.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${partyInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'issues', 'error')} ">
	<label for="issues">
		<g:message code="party.issues.label" default="Issues" />
		
	</label>
	<g:select name="issues" from="${de.vp.Issue.list()}" multiple="multiple" optionKey="id" size="5" value="${partyInstance?.issues*.id}" class="many-to-many"/>
</div>

