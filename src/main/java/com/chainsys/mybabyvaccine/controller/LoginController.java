 package com.chainsys.mybabyvaccine.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.mybabyvaccine.models.Login;
import com.chainsys.mybabyvaccine.models.Person;
import com.chainsys.mybabyvaccine.services.LoginService;
import com.chainsys.mybabyvaccine.services.PersonServices;

@Controller
@RequestMapping("/login")
public class LoginController {
	private static final String REDIRECT_ERROR_PAGE =  "redirect:/login/errorpage?error=";
	private static final String USER_INFO = "userl"; 
	private static final String EMAIL = "email";
	
	@Autowired
	private LoginService loginService;
	@Autowired
	private PersonServices personServices;

	@GetMapping("/")
	public String showLoginFormH(Model model) {
		Login login = new Login();
		model.addAttribute("userLogin", login);
		return "NewFile";
	}

	@PostMapping("/checklogin")
	public String addNewUser(@ModelAttribute("userLogin") Login theUser, Model model,HttpSession session) {
		Login userA=null;
		try {
		userA = loginService.fetchExistingUser(theUser);
		}catch(Exception exp) {
			String errorMsg =  "Invalid Email or Password";
			return REDIRECT_ERROR_PAGE+errorMsg;
		}
		try {
		if (userA != null) {
			session.setAttribute(EMAIL,userA.getEmail());
			if ("Staff".equals(userA.getPersonCategory())) {
				return "redirect:/login/staffpagea";
			} else if ("User".equals(userA.getPersonCategory())) {
				return "redirect:/login/userpagea";
				
			} else if ("Admin".equals(userA.getPersonCategory())) {
				return "redirect:/login/adminpagea";
			} else {
				String errorMsg = "Invalid Person Category choosed";
				return REDIRECT_ERROR_PAGE+errorMsg;
			}
		} else {
//			String errorMsg= "Invalid Email or Password";
//			return REDIRECT_ERROR_PAGE+errorMsg;
			model.addAttribute("result", "Invalid user name and password");
		}
		
		}catch(Exception e)
		{
			model.addAttribute("error", e.getMessage());
		}
		return "loginform";
	}

	@GetMapping("/staffpagea")
	public String showStaffPage(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String emailId=(String)session.getAttribute(EMAIL);
		Person user = personServices.getPersonByEmail(emailId);
		model.addAttribute(USER_INFO, user);
		return "/actionstarters/staffaction";
	}

	@GetMapping("/userpagea")
	public String showUserPage(Model model,HttpServletRequest request,HttpSession sessionA) {
		HttpSession session = request.getSession();
		String emailId=(String)session.getAttribute(EMAIL);
		Person userdata = personServices.getPersonByEmail(emailId);
		sessionA.setAttribute("uId", userdata.getUserId());
		model.addAttribute(USER_INFO, userdata);
		return "/actionstarters/useraction";
	}

	@GetMapping("/adminpagea")
	public String showAdminPage(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String emailId=(String)session.getAttribute(EMAIL);
		Person user = personServices.getPersonByEmail(emailId);
		model.addAttribute(USER_INFO, user);
		return "/actionstarters/adminaction";
	}
	
	@GetMapping("/errorpage")
	public String showErrorPage(@RequestParam("error")String msg, Model model) {
		model.addAttribute("error", msg);
		return "/home/error";
	}
	
	@GetMapping("/dateweekorholiday")
	public String showdateweekorholiday(Model model) {
		return "/jsdemos/date-function";
	}
	@GetMapping("/hoursbtwntwodate")
	public String showhoursbtwntwodate(Model model) {
		return "/jsdemos/hours-btwn-two-date";
	}
}
