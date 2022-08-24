/**
 * 
 */
package com.chainsys.mybabyvaccine.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.mybabyvaccine.commonutils.InvalidInputDataException;
import com.chainsys.mybabyvaccine.models.Login;
import com.chainsys.mybabyvaccine.models.Person;
import com.chainsys.mybabyvaccine.services.LocationCodeServices;
import com.chainsys.mybabyvaccine.services.PersonServices;


/**
 * @author shan3102
 *
 */
@Controller
@RequestMapping("/persons")
public class PersonController {
	private static final String REDIRECT_PAGE =  "redirect:/persons/listallpersons";
	private static final String MESSAGE = "Invalid User Detail";
	private static final String ERROR ="error";
	private static final String RESULT ="result";
	
	@Autowired
	private PersonServices personServices;
	@Autowired
	private LocationCodeServices locServices;

	@GetMapping("/userfirstview")
	public String showChildActionMenu() {
		return "/person/user-firstpage";
	}
	
	@GetMapping("/useactivityrfirstview")
	public String showActionMenuUser(Model model) {
		return "/persons/viewuser";
	}
	
	@GetMapping("/listallpersons")
	public String getAllPersons(HttpServletRequest request, Model model) {
		List<Person> personList = personServices.getPersons();
		model.addAttribute("listAllPersons", personList);
		HttpSession session= request.getSession();
		model.addAttribute(ERROR, session.getAttribute(MESSAGE));
		return "/person/list-persons";
	}

	@GetMapping("/userfindform")
	public String showUserFindForm() {
		return "/person/fetch-user-form";
	}

	@GetMapping("/fetchperson")
	public String getPersonById(@RequestParam("id") Integer personId, Model model) {
		Person theperson = personServices.getPersonById(personId);
		model.addAttribute("fetchPersonById", theperson);
		return "/person/find-by-id-person-form";
	}
	
	
	@GetMapping("/addpersonform")
	public String showPersonAddForm(Model model) {
		Person thePerson = new Person();
		model.addAttribute("addPerson", thePerson);
		List<Integer> pincodeList = locServices.getLocationPincodeList();
		model.addAttribute("listOfpincode", pincodeList);
	
		return "/person/add-form-person";
	}

	@PostMapping("/addpersons")
	public String addPerson(@Valid @ModelAttribute("addPerson") Person thePerson ,Model model) {
		try {
			personServices.addPerson(thePerson);
		}catch(Exception e) {
			model.addAttribute(ERROR,"Cannot find User Detail ");
			model.addAttribute(RESULT, MESSAGE);
		}
		return REDIRECT_PAGE;
	}

	@GetMapping("/usermodifyform")
	public String showUserModifyForm() {
		return "/person/user-modify-form";
	}

	@GetMapping("/personmodifyform")
	public String showPersonUpdateForm(@RequestParam("id") Integer personId, Model model,HttpSession session) {
		Person thePerson=null;
		try {
			thePerson= personServices.getPersonById(personId);
			if(thePerson==null)
				throw new InvalidInputDataException("Null Value Cannot find Person Details");
		}catch(Exception e) {
			session.setAttribute(ERROR, e.getMessage());
			return REDIRECT_PAGE;
		}
		model.addAttribute("modifyPerson", thePerson);
		return "/person/update-form-person";
	}

	@PostMapping("/modifypersons")
	public String updatePerson(@ModelAttribute("modifyPerson") Person personA,HttpSession session) {
		try {
			personServices.addPerson(personA);
		}catch(Exception e) {
			session.setAttribute(ERROR, "Cannot Update User");
			return REDIRECT_PAGE;
		}
		return REDIRECT_PAGE;
	}

	@GetMapping("/userdeleteform")
	public String showUserdeleteForm() {
		return "/person/user-delete-form";
	}

	@GetMapping("/persondeleteform")
	public String deletePerson(@RequestParam("id") Integer personId) {
		personServices.removePerson(personId);
		return REDIRECT_PAGE;
	}

	@GetMapping("/viewuser")
	public String getPersonByEmail(@RequestParam("userdatal") Login userA, Model model) {
		Person theperson = personServices.getPersonByEmail(userA.getEmail());
		model.addAttribute("fetchPersonById", theperson);
		return "/person/find-by-id-person-form";
	}
//	----------------------------
	@GetMapping("/userlocationfindform")
	public String showUserLocationFindForm() {
		return "/person/user-location-fetch";
	}

	@GetMapping("/getpersonlocation")
	public String getPersonLocationById(@RequestParam("id") Integer userId, Model model,HttpSession session) {
		Person theperson=null;
		try {
		theperson= personServices.getPersonById(userId);
		if(theperson==null)
			throw new InvalidInputDataException("Cannot View Person Detail");
		}catch(Exception e) {
			session.setAttribute(ERROR, e.getMessage());
			return REDIRECT_PAGE;
		}
		model.addAttribute("persondetails", theperson);
		model.addAttribute("locationdetails", locServices.getLocationcodeById(theperson.getPinCode()));
		return "/person/find-by-id-person-location-form";
	}
}
