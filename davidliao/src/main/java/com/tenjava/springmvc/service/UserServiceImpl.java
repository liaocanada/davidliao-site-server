package com.tenjava.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tenjava.springmvc.dao.UserDao;
import com.tenjava.springmvc.model.User;


@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	
	static {
		System.out.println("Entered Class: " +  new Object(){}.getClass().getEnclosingClass());
	}

	@Autowired
	private UserDao dao;

	@Autowired
    private PasswordEncoder passwordEncoder;
	
	public User findById(int id) {
		return dao.findById(id);
	}

	public User findBySSO(String sso) {
		User user = dao.findBySSO(sso);
		return user;
	}

	public void saveUser(User user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		dao.save(user);
	}

	/*
	 * Since the method is running with Transaction, No need to call hibernate update explicitly.
	 * Just fetch the entity from db and update it with proper values within transaction.
	 * It will be updated in db once transaction ends. 
	 */
	public void updateUser(User user) {
		
		User entity = dao.findById(user.getId());
		if(entity!=null){
			entity.setSsoId(user.getSsoId());
			if(!user.getPassword().equals(entity.getPassword())){
				entity.setPassword(passwordEncoder.encode(user.getPassword()));
			}
			entity.setFirstName(user.getFirstName());
			entity.setLastName(user.getLastName());
			entity.setEmail(user.getEmail());
			entity.setIp(user.getIp());
			entity.setDepartment(user.getDepartment());
			entity.setPosition(user.getPosition());
			entity.setSin(user.getSin());
			entity.setPhoneNumber(user.getPhoneNumber());
			entity.setSalary(user.getSalary());
			entity.setHireDate(user.getHireDate());
			entity.setUserProfiles(user.getUserProfiles());
		}
	}

	
	public void deleteUserBySSO(String sso) {
		dao.deleteBySSO(sso);
	}
	
	public List<User> findAllUsers(String sortParam, boolean lowToHigh, String email, 
			String department, long minSalary, long maxSalary, String startDate, String endDate) {
		//return dao.findAllUsers();
		return dao.findUsersBy(sortParam, lowToHigh, email, department, minSalary, maxSalary, startDate, endDate);
	}

	public boolean isUserSSOUnique(Integer id, String sso) {
		User user = findBySSO(sso);
		return ( user == null || ((id != null) && (user.getId() == id)));
	}
	
}
