package de.vp

import grails.plugins.springsecurity.Secured;

// security annotations not active! (see config.groovy)
@Secured(['ROLE_USER'])
class ActorController {
	static scaffold = true;
}
