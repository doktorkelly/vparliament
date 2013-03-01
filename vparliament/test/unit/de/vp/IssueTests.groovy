package de.vp



import grails.test.mixin.*
import org.junit.*
import org.apache.commons.logging.LogFactory;

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Issue)
class IssueTests {
	private static final log = LogFactory.getLog(this)

    void testSomething() {
	   log.info("start testSomething...");
       fail "Implement me"
    }
}
