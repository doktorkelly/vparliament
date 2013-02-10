<div class="nav" role="navigation">
	<ul>
		<li><a class="home" href="${createLink(uri: '/')}">Home</a></li>
		<g:each 
			in="['login', 'logout', 'actor', 'party', 'area', 'issue', 'issueVote', 'comment']" 
			var="ctrlName">
			<g:if test="${controllerName == ctrlName}">
				<li><g:link class="active" controller="${ctrlName}">${ctrlName.capitalize()}</g:link></li>
			</g:if>
			<g:else>
				<li><g:link class="" controller="${ctrlName}">${ctrlName.capitalize()}</g:link></li>
			</g:else>
		</g:each>

		<%--
		<li><g:link class="login"  controller="login">Login</g:link></li>
		<li><g:link class="logout" controller="logout ">Logout</g:link></li>
		<li><g:link class=""   controller="actor">Actors</g:link></li>
		<li><g:link class=""   controller="party">Parties</g:link></li>
		<li><g:link class=""   controller="area">Areas</g:link></li>
		<li><g:link class=""   controller="issue">Issues</g:link></li>
		<li><g:link class=""   controller="issueVote">Issue Votes</g:link></li>
		<li><g:link class=""   controller="comment">Comments</g:link></li>
		--%>
	</ul>
</div>