package com.tenjava.springmvc.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.tenjava.springmvc.model.User;


/**
 * The implementation for the interface {@link UserDao}.
 */
@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {
	
	static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	
	public User findById(int id) {
		User user = getByKey(id);
		//If user exists, initialize its corresponding profile (role)
		if(user!=null){
			Hibernate.initialize(user.getUserProfiles());
		}
		return user;
	}

	public User findBySSO(String sso) {
		logger.info("SSO : {}", sso);
		//Adds a SSO ID criteria to finding users
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("ssoId", sso));
		//Makes sure it only returns one user
		User user = (User)crit.uniqueResult();
		
		//If user exists, initialize its corresponding profile (role) 
		if(user!=null){
			Hibernate.initialize(user.getUserProfiles());
		}
		return user;
	}
	
	@SuppressWarnings("unchecked")
	public List<User> findUsersBy(String sortParam, boolean lowToHigh, String email, String department, long minSalary, long maxSalary, String startDate, String endDate) {
		
		//Try to parse String to Date - if unsuccessful, make null
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		Date startDateObject = null;
		Date endDateObject = null;
		try {
			startDateObject = formatter.parse(startDate);
		}
		catch (ParseException e) {
			logger.info("Empty/invalid start date");
		}
		try {
			endDateObject = formatter.parse(endDate);			
		}
		catch (ParseException e) {
			logger.info("Empty/invalid end date");
		}
		
		//Create a set of criteria
		Criteria criteria = createEntityCriteria();

		//Sort criteria
		if (lowToHigh) criteria.addOrder(Order.asc(sortParam));
		else criteria.addOrder(Order.desc(sortParam));
		
		//Filter criteria
		if (email != null && !email.isEmpty()) 
			criteria.add(Restrictions.like("email", email)); //Add filter if not empty
		if (department != null && !department.isEmpty()) 
			criteria.add(Restrictions.eq("department", department)); //Add filter if not empty
		criteria.add(Restrictions.ge("salary", minSalary)); //Add filter, default is 0
		criteria.add(Restrictions.le("salary", maxSalary)); //Add filter, default is Long.maxValue
		
		if (startDateObject != null) {
			//Subtract 1 day from start day to make it inclusive
			Calendar cal = Calendar.getInstance();
			cal.setTime(startDateObject);
			cal.add(Calendar.DATE, -1);
			criteria.add(Restrictions.gt("hireDate", cal.getTime())); //Add filter if not null
		}
		if (endDateObject != null) {
			//End day does not require a day subtracted
			criteria.add(Restrictions.lt("hireDate", endDateObject)); //Add filter if not null
		}
		
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//Avoid duplicates
		
		List<User> users = (List<User>) criteria.list(); //Find users by criteria
		
		return users;
	}

	public void save(User user) {
		//Saves edit/add into database
		persist(user);
	}

	public void deleteBySSO(String sso) {
		//Add ssoId as a criteria for find (delete may not be instant)
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("ssoId", sso));
		User user = (User)crit.uniqueResult();
		
		//Actually delete the user
		delete(user);
	}

}
