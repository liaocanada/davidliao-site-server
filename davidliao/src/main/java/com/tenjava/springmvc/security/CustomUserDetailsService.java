package com.tenjava.springmvc.security;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.tenjava.springmvc.model.User;
import com.tenjava.springmvc.model.UserProfile;
import com.tenjava.springmvc.service.UserService;

/**
 *
 */
@Service("customUserDetailsService") //TODO comment
public class CustomUserDetailsService implements UserDetailsService {

	static final Logger logger = LoggerFactory.getLogger(CustomUserDetailsService.class);
	
	@Autowired
	private UserService userService;
	
	/**
	 * 
	 * @param ssoId
	 * @return
	 */
	@Transactional(readOnly = false)
	public UserDetails loadUserByUsername(String ssoId) throws UsernameNotFoundException {
		User user = userService.findBySSO(ssoId);
		logger.info("User : {}", user);
		
		if (user == null) {
			logger.info("User not found");
			throw new UsernameNotFoundException("Username not found");
		}
		//If user exists
		else {
			//Save user IP address
			  HttpServletRequest request  =
		             ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes())
			                    .getRequest();
			
			user.setIp(request.getRemoteAddr());
			userService.updateUser(user);
		}
		return new org.springframework.security.core.userdetails.User(user.getSsoId(), user.getPassword(), true, true,
				true, true, getGrantedAuthorities(user));
	}
	
	/**
	 * Set possible roles a user can have in this web application
	 * @param user
	 * @return
	 */
	private List<GrantedAuthority> getGrantedAuthorities(User user){
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		for(UserProfile userProfile : user.getUserProfiles()){
			logger.info("UserProfile : {}", userProfile);
			authorities.add(new SimpleGrantedAuthority("ROLE_"+userProfile.getType()));
		}
		logger.info("authorities : {}", authorities);
		return authorities;
	}
	
}
