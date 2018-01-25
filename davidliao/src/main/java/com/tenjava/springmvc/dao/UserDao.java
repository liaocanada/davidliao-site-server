package com.tenjava.springmvc.dao;

import java.util.List;

import com.tenjava.springmvc.model.User;

/**
 * This is an interface that simply lists out the structure for {@link UserDaoImpl}
 */
public interface UserDao {

	/**
	 * Finds a user by its ID
	 * @param id the ID of the user
	 * @return a {@link User} object that has the specified ID.
	 */
	User findById(int id);
	
	/**
	 * Finds a user by its SSO ID
	 * @param sso the SSO ID (username) of the user
	 * @return a {@link User} object that has the specified SSO ID.
	 */
	User findBySSO(String sso);
	
	/**
	 * Updates or adds the user to the database.
	 * @param user The user model to be added or updated.
	 */
	void save(User user);
	
	/**
	 * Deletes a user from the database.
	 * @param sso The SSO ID of the user to be deleted.
	 */
	void deleteBySSO(String sso);

	/**
	 * Finds all users that match the filter criteria, in the order specified
	 * @param sortParam The field to sort by
	 * @param lowToHigh True if in ascending order, false if in descending order
	 * @param email The email filter
	 * @param department The department filter
	 * @param minSalary The minimum range for the salary
	 * @param maxSalary The maximum range for the salary
	 * @param startDate The earliest range for the hire date
	 * @param endDate The latest range for the hire date
	 * @return A list of users that match the listed criteria.
	 */
	List<User> findUsersBy(String sortParam, boolean lowToHigh, String email, String department, long minSalary, long maxSalary, String startDate, String endDate);
}