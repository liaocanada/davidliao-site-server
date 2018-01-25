package com.tenjava.springmvc.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.tenjava.springmvc.converter.RoleToUserProfileConverter;

/**
 * Sets out the general configuration for this project.
 */
@Configuration //Initialize at runtime
@EnableWebMvc //Imports default Spring MVC configuration (to be overriden)
@ComponentScan(basePackages = "com.tenjava.springmvc") //Sets location of components
public class AppConfig extends WebMvcConfigurerAdapter {
	
	@Autowired
	RoleToUserProfileConverter roleToUserProfileConverter;

	/**
     * Configure the view resolvers (webpages) of this project.
     */
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {

		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		registry.viewResolver(viewResolver);
		
	}
	
	/**
     * Configure the resource handlers to find static resources, including images, CSS, and JavaScript.
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
    	//Resources are in this directory
        registry.addResourceHandler("/static/**").addResourceLocations("/static/");
    }
    
    /**
     * Configure the formatter, which converts roles (String[]) to a {@link UserProfile}
     */
    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(roleToUserProfileConverter);
    }
	

    /**
     * Configure MessageSource to lookup validation/error messages in messages.properties
     */
    @Bean
	public MessageSource messageSource() {
	    ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
	    //Sets messages.properties as the file to look for custom error messages
	    messageSource.setBasename("messages");
	    return messageSource;
	}
    
    /**
     * Workaround for a bug in Spring MVC regarding {@link PathVariable}
     */
    @Override
    public void configurePathMatch(PathMatchConfigurer matcher) {
        matcher.setUseRegisteredSuffixPatternMatch(true);
    }
}

