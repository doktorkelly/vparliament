<div class="nav" role="navigation">
	<ul>
		<li><a      class="home" href="${createLink(uri: '/')}">Home</a></li>
		<li><g:link class="login"  controller="login">Login</g:link></li>
		<li><g:link class="logout" controller="logout ">Logout</g:link></li>

		<g:if test="${pageProperty(name: 'body.controller') == 'actor'}">
			<li><g:link class="active" controller="actor">Actors</g:link></li>
		</g:if>
		<g:else>
			<li class=""><g:link controller="actor">Actors</g:link></li>
		</g:else>
		
		<li><g:link class=""   controller="party">Parties</g:link></li>
		<li><g:link class=""   controller="area">Areas</g:link></li>
		<li><g:link class=""   controller="issue">Issues</g:link></li>
		<li><g:link class=""   controller="issueVote">Issue Votes</g:link></li>
		<li><g:link class=""   controller="comment">Comments</g:link></li>
		<%-- <li><g:link class="list"   controller="party">Parties</g:link></li> --%>
	</ul>
</div>