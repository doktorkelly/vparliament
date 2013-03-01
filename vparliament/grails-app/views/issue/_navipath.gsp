		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="contextItem" controller="party" action="list">parliament</g:link></li>
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
			</ul>
		</div>