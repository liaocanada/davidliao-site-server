package ca.davidliao.site.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * Initializes the project using Spring MVC.
 */
public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { AppConfig.class };
	}
 
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return null;
	}
 
	/** Handle all URL patterns */
	@Override
	protected String[] getServletMappings() {
		//Represents all URLs
		return new String[] { "/" };
	}

}
