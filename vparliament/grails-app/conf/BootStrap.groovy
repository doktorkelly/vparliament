import de.vp.Role
import de.vp.User
import de.vp.UserRole;

class BootStrap {

    def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true);
		def userRole  = new Role(authority: 'ROLE_USER').save(flush: true);
		def guestRole  = new Role(authority: 'ROLE_GUEST').save(flush: true);
		
		def admin1 = new User(username: 'admin1', enabled: true, password: 'appadmin1').save(flush: true);
		UserRole.create(admin1, adminRole, true);

		def user1 = new User(username: 'user1', enabled: true, password: 'appuser1').save(flush: true); 
		UserRole.create(user1, userRole, true);

		def guest1 = new User(username: 'guest1', enabled: true, password: 'appguest1').save(flush: true);
		UserRole.create(guest1, guestRole, true);
		
//		assert User.count() == 1;
//		assert Role.count() == 2;
//		assert UserRole.count() == 1;
    }
	
    def destroy = {
    }
}
