package de.vp;

import grails.test.mixin.*;
import org.junit.*;
import org.apache.log4j.Logger;
import org.apache.log4j.BasicConfigurator;

class NavigationPathTest {
	static Logger log = Logger.getLogger(NavigationPathTest.class);
	
	@BeforeClass
	static void setupClass() {
		BasicConfigurator.configure();
	}

	@Test
	void testGotoItem() {
		//arrange
		NavigationPath naviPath = new NavigationPath();
		NavigationItem item1 = new NavigationItem("item1", "url1");
		naviPath.addItem(item1);
		NavigationItem item2 = new NavigationItem("item2", "url2");
		naviPath.addItem(item2);
		NavigationItem item3 = new NavigationItem("item3", "url3");
		naviPath.addItem(item3);
		log.info("\nnaviPath: " + naviPath);
		
		//act
		naviPath.gotoItem(item2);
		log.info("\nnaviPath: " + naviPath);
		
		//assert
		assert(naviPath != null);
		assert(naviPath.size() == 2);
	}
}
