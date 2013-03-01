package de.vp

import static org.junit.Assert.*

import grails.test.mixin.*
import grails.test.mixin.support.*
import org.junit.*
import org.apache.log4j.Logger;
import org.apache.log4j.BasicConfigurator;


//@TestMixin(GrailsUnitTestMixin)
class NavigationItemTest {
	static Logger log = Logger.getLogger(NavigationItemTest.class);

	@BeforeClass
	static void setupClass() {
		BasicConfigurator.configure();
	}
	
    void setUp() {
        // Setup logic here
    }

    void tearDown() {
        // Tear down logic here
    }

    @Test
	void testEquals() {
		//arrange
		NavigationItem item1 = new NavigationItem("name1", "url1");
		NavigationItem item2 = new NavigationItem("name1", "url1");
        log.info("" +
			"\nitem1: " + item1 +
			"\nitem2: " + item2);
		
		//act
		boolean result = item1.equals(item2);
		
		//assert
		assert(result == true);
    }
}
