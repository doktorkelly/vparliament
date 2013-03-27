		<div class="nav" role="navigation">
			<ul>
				<g:each var="item" in="${naviPath}">
					<li><g:link class="naviItem" url="${item.url}">${item.name}</g:link></li>
				</g:each>
			
				<%--
				<li><g:link class="contextItem" controller="party" action="list">parliament</g:link></li>
				<li><g:link class="contextItem" controller="party" action="show" params="[id: params.partyId]">
					&gt; party ${params.partyId}
				</g:link></li>
				<li><g:link class="contextItem" params="${params}">
					&gt; area ${params.areaId}
				</g:link></li>
				--%>
			</ul>
		</div>