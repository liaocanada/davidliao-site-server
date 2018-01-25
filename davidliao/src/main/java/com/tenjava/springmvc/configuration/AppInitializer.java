package com.tenjava.springmvc.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * Initializes the project using Spring MVC.
 */
public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	
	/**
	 * Sets the root (main) configuration class as {@link AppConfig}.
	 */
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { AppConfig.class };
	}
 
	/**
	 * No additional servlet configuration needed; all configuration is specified through {@link AppConfig}.
	 */
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return null;
	}
 
	/**
	 * Sets this project to handle all URL patterns.
	 */
	@Override
	protected String[] getServletMappings() {
		//Represents all URLs
		return new String[] { "/" };
	}

}
