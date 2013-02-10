<%@ page import="de.vp.Actor" %>



<div class="fieldcontain ${hasErrors(bean: actorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="actor.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${actorInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: actorInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="actor.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${actorInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: actorInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="actor.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${actorInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: actorInstance, field: 'votes', 'error')} ">
	<label for="votes">
		<g:message code="actor.votes.label" default="Votes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${actorInstance?.votes?}" var="v">
    <li><g:link controller="issueVote" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="issueVote" action="create" params="['actor.id': actorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'issueVote.label', default: 'IssueVote')])}</g:link>
</li>
</ul>

</div>

