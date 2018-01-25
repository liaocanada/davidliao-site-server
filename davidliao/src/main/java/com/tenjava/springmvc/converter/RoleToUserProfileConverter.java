package com.tenjava.springmvc.converter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.tenjava.springmvc.model.UserProfile;
import com.tenjava.springmvc.service.UserProfileService;

/**
 * A converter class used to map id's to actual userProfile objects.
 */
@Component
public class RoleToUserProfileConverter implements Converter<Object, UserProfile> {

	/**
	 * Adds logger to this class
	 */
	static final Logger logger = LoggerFactory.getLogger(RoleToUserProfileConverter.class);
	
	/**
	 * Used for retrieving a user from the database
	 */
	@Autowired
	UserProfileService userProfileService;

	/**
	 * Gets UserProfile by Id
	 * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
	 */
	public UserProfile convert(Object element) {
		Integer id = Integer.parseInt((String)element);
		UserProfile profile= userProfileService.findById(id);
		logger.info("Profile : {}", profile);
		return profile;
	}
	
}