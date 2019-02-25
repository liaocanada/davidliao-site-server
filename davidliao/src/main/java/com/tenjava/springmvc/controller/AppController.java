package com.tenjava.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tenjava.springmvc.dao.UserDao;
import com.tenjava.springmvc.dao.UserProfileDao;
import com.tenjava.springmvc.service.UserProfileService;
import com.tenjava.springmvc.service.UserService;

/**
 * Manages all URL requests and directs them appropriately.
 */
@Controller
@RequestMapping("/") //Handles all URLs
public class AppController {
	
	/** A service that modifies/formats data provided by {@link UserDao}. */
	UserService userService;

	/** A service that modifies/formats data provided by {@link UserProfileDao}. */
	UserProfileService userProfileService;
	
	/** Contains the error messages for error checking. */
	MessageSource messageSource;

	/** Used for the "Remember Me" function. */
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;
	
	/** Used for authentication of users trying to log in. */
	AuthenticationTrustResolver authenticationTrustResolver;
	
	
	/** Inject required services using Spring autowiring. */
	@Autowired
	public AppController(
			UserService userService, 
			UserProfileService userProfileService, 
			MessageSource messageSource,
			PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices, 
			AuthenticationTrustResolver authenticationTrustResolver) {
		this.userService = userService;
		this.userProfileService = userProfileService;
		this.messageSource = messageSource;
		this.persistentTokenBasedRememberMeServices = persistentTokenBasedRememberMeServices;
		this.authenticationTrustResolver = authenticationTrustResolver;
	}
	

	/* Handle page GET requests */
	
	@GetMapping({"/", "/home"})
	public String homePage() {
		return "home";
	}
	
	@GetMapping("/resume")
	public String resumePage() {
		return "resume";
	}
	
	@GetMapping("/projects")
	public String projectsPage() {
		return "projects";
	}
	
	@GetMapping("/achievements")
	public String achievementsPage() {
		return "achievements";
	}
	
	@GetMapping("/shopping-cart")
	public String newUser() {
		return "shopping_cart";
	}
	
	@GetMapping("/contact")
	public String contactPage() {
		return "contact";
	}
	
	@GetMapping("/karaoke")
	public String karaokePage() {
		return "karaoke";
	}
	
	@GetMapping("/hangman")
	public String hangmanPage() {
		return "hangman";
	}
	
	@GetMapping("/present")
	public String presentsPage() {
		return "present";
	}

}
