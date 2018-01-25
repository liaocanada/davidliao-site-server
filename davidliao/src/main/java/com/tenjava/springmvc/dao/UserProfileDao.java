package com.tenjava.springmvc.dao;

import java.util.List;

import com.tenjava.springmvc.model.UserProfile;


public interface UserProfileDao {

	/**
	 * Lists all {@link UserProfile}s in the database
	 * @return a list of all {@link UserProfile}s
	 */
	List<UserProfile> findAll();
	
	/**
	 * Finds a {@link UserProfile} with the specified role
	 * @param type The role to search UserProfile by
	 * @return A UserProfile with the specified role
	 */
	UserProfile findByType(String type);
	
	/**
	 * Finds a {@link UserProfile} with the specified ID
	 * @param id
	 * @return A UserProfile with the specified ID
	 */
	UserProfile findById(int id);
}
