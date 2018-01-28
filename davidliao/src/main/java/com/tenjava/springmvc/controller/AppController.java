package com.tenjava.springmvc.controller;

/*import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;*/

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
/*import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;*/
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
/*import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;*/
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.tenjava.springmvc.dao.UserDao;
/*import com.tenjava.springmvc.model.User;
import com.tenjava.springmvc.model.UserProfile;*/
import com.tenjava.springmvc.service.UserProfileService;
import com.tenjava.springmvc.service.UserService;

/**
 * Manages all URL requests and directs them appropriately.
 */
@Controller
@RequestMapping("/") //Handles all URLs
@SessionAttributes("roles") //Defines roles as a mandatory attribute for the session
public class AppController {
	
	/**
	 * A service that modifies/formats data provided by {@link UserDao}.
	 */
	@Autowired
	UserService userService;

	/**
	 * A service that modifies/formats data provided by {@link UserProfileDao}.
	 */
	@Autowired
	UserProfileService userProfileService;
	
	/**
	 * A container that contains the error messages for error checking.
	 */
	@Autowired
	MessageSource messageSource;

	/**
	 * A service used for the "Remember Me" function.
	 */
	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;
	
	/**
	 * Used for authentication of users trying to log in.
	 */
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	
/*	*//**
	 * This method will list all existing users.
	 * @param model A container for model objects.
	 * @param sortParam Parameter to sort the users by.
	 * @param lowToHigh True if sort by ascending order; false if sort by descending order.
	 * @param email Email address to filter by. Use % to represent any value. 
	 * @param department Department to filter by.
	 * @param minSalary Minimum value of salary range.
	 * @param maxSalary Maximum value of salary range.
	 * @param role //TODO 
	 * @param startDate Earliest date of date range.
	 * @param endDate Latest date of date range.
	 * @return A view name, representing the next page to be viewed.
	 *//*
	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model, 
			@RequestParam(value="sortParam", defaultValue="firstName", required=false) String sortParam, 
			@RequestParam(value="lowToHigh", defaultValue="true", required=false) boolean lowToHigh, 
			@RequestParam(value="email", defaultValue="", required=false) String email, 
			@RequestParam(value = "department", defaultValue ="", required = false) String department,
			@RequestParam(value = "minSalary", defaultValue = "0", required = false) long minSalary, 
			@RequestParam(value = "maxSalary", defaultValue = "9223372036854775807", required = false) long maxSalary, 
			@RequestParam(value = "role", defaultValue = "", required = false) String role, //TODO
			@RequestParam(value = "startDate", defaultValue = "", required = false) String startDate,
			@RequestParam(value = "endDate", defaultValue = "", required = false) String endDate) {
		
		//Calls service
		List<User> users = userService.findAllUsers(sortParam, lowToHigh, email, department, minSalary, maxSalary, startDate, endDate);
		
		//Adds required models
		model.addAttribute("users", users);
		model.addAttribute("loggedinuser", getPrincipal());
		
		//User views userslist page once request is processed
		return "userslist";
	}

	*//**
	 * This method will provide the medium to add a new user.
	 *//*
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		User user = new User();
		
		//Adds required models
		model.addAttribute("user", user);
		model.addAttribute("edit", false);
		model.addAttribute("loggedinuser", getPrincipal());
		
		//User views registration page once request is processed
		return "registration";
	}

	*//**
	 * This method will be called on form submission, handling POST request for
	 * saving user in database. It also validates the user input
	 *//*
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult result,
			ModelMap model) {

		if (result.hasErrors()) {
			//Stay on same page
			return "registration";
		}
		
		//If SSO ID is not unique (special case of error)
		if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
			//Create a new error instance
			FieldError ssoError = new FieldError(
					"user","ssoId",messageSource.getMessage(
							"non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
		    result.addError(ssoError);
			//Stay on same page
			return "registration";
		}
		
		//Calls service
		userService.saveUser(user);

		//Adds required models
		model.addAttribute("success", user.getFirstName() + " "+ user.getLastName() + " registered successfully");
		model.addAttribute("loggedinuser", getPrincipal());

		//User views registration confirmation page once request is successfully processed
		return "registrationsuccess";
	}


	*//**
	 * This method will provide the medium to update an existing user.
	 *//*
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable String ssoId, ModelMap model) {
		//Calls service
		User user = userService.findBySSO(ssoId);
		
		//Adds required models
		model.addAttribute("user", user);
		model.addAttribute("edit", true);
		model.addAttribute("loggedinuser", getPrincipal());
		
		//User views registration page once request is processed
		return "registration";
	}
	
	*//**
	 * This method will be called on form submission for updating a user.
	 *//*
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.POST)
	public String updateUser(@Valid User user, BindingResult result,
			ModelMap model, @PathVariable String ssoId) {

		if (result.hasErrors()) {
			//Stay on same page
			return "registration";
		}
		
		//If SSO ID is not unique (special case of error)
		if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
			//Create new error instance
			FieldError ssoError = new FieldError("user", "ssoId", 
					messageSource.getMessage(
							"non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
		    result.addError(ssoError);
		    //Stay on same page
			return "registration";
		}

		//Calls service
		userService.updateUser(user);

		//Add required models
		model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " updated successfully");
		model.addAttribute("loggedinuser", getPrincipal());
		
		//User views registration confirmation page once request is processed successfully
		return "registrationsuccess";
	}

	
	*//**
	 * This method will delete an user by its SSO ID.
	 *//*
	@RequestMapping(value = { "/delete-user-{ssoId}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable String ssoId) {
		//Calls service
		userService.deleteUserBySSO(ssoId);
		//Calls the GET method with the URL /list
		return "redirect:/list";
	}
	

	*//**
	 * This method adds all userProfiles to the roles attribute. It will be called 
	 * when Session is created, as role is a mandatory session attribute
	 *//*
	@ModelAttribute("roles") 
	public List<UserProfile> initializeProfiles() {
		return userProfileService.findAll();
	}
	
	*//**
	 * This method handles automatic access-denied redirects.
	 *//*
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		//Add required models
		model.addAttribute("loggedinuser", getPrincipal());
		//User views access denied page
		return "accessDenied";
	}

	*//**
	 * This method handles login requests.
	 * 
	 * In addition, if the user is already logged in and tries to access login page again
	 * they will be redirected to the home page.
	 *//*
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(HttpServletRequest request) {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
	    } else {
	    	return "redirect:/home";  
	    }
	}
*/
	/**
	 * Handles home page requests (both / and /home)
	 */
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String homePage(ModelMap model) {
//		model.addAttribute("loggedinuser", getPrincipal());
		return "home";
	}
	
/*	*//**
	 * Handles news page requests
	 *//*
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String newsPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "news";
	}*/
	
	/**
	 * Handles contact page requests
	 */
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactPage(ModelMap model) {
//		model.addAttribute("loggedinuser", getPrincipal());
		return "contact";
	}
	
/*	*//**
	 * Handles services page requests
	 *//*
	@RequestMapping(value = "/services", method = RequestMethod.GET)
	public String servicesPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "services";
	}*/
	
	@RequestMapping(value = "/achievements", method = RequestMethod.GET)
	public String achievementsPage(ModelMap model) {
//		model.addAttribute("loggedinuser", getPrincipal());
		return "achievements";
	}
	
	@RequestMapping(value = "/projects", method = RequestMethod.GET)
	public String projectsPage(ModelMap model) {
//		model.addAttribute("loggedinuser", getPrincipal());
		return "projects";
	}
	
/*	*//**
	 * Handles clients page requests
	 *//*
	@RequestMapping(value = "/clients", method = RequestMethod.GET)
	public String clientsPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "clients";
	}
	
	*//**
	 * Handles logout requests
	 *//*
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}*/

/*	*//**
	 * @return the SSO ID of the logged in user.
	 *//*
	private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}*/
	
/*	*//**
	 * @return true if user is logged in, false if not
	 *//*
	private boolean isCurrentAuthenticationAnonymous() {
	    final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    return authenticationTrustResolver.isAnonymous(authentication);
	}*/


}