package com.chainsys.mybabyvaccine.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.mybabyvaccine.models.Login;
import com.chainsys.mybabyvaccine.services.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	private static final String REDIRECT_ERROR_PAGE =  "redirect:/login/errorpage?error=";
	@Autowired
	private LoginService loginService;

	@GetMapping("/loginform")
	public String showLoginForm(Model model) {
		Login login = new Login();
		model.addAttribute("userLogin", login);
		return "/home/loginpage";
	}

	@PostMapping("/checklogin")
	public String addNewUser(@ModelAttribute("userLogin") Login theUser, Model model) {
		Login userA=null;
		try {
		userA = loginService.fetchExistingUser(theUser);
		}catch(Exception exp) {
			String errorMsg =  "Invalid Email or Password";
			return REDIRECT_ERROR_PAGE+errorMsg;
		}
		if (userA != null) {
			if ("Staff".equals(userA.getPersonCategory())) {
				return "redirect:/login/staffpagea";
			} else if ("User".equals(userA.getPersonCategory())) {
				model.addAttribute("userdata", theUser);
				return "redirect:/login/userpagea";
				
			} else if ("Admin".equals(userA.getPersonCategory())) {
				return "redirect:/login/adminpagea";
			} else {
				String errorMsg = "Invalid Person Category choosed";
				return REDIRECT_ERROR_PAGE+errorMsg;
			}
		} else {
			String errorMsg= "Invalid Email or Password";
			return REDIRECT_ERROR_PAGE+errorMsg;
		}
	}

	@GetMapping("/staffpagea")
	public String showStaffPage(Model model) {
		return "/actionstarters/staffaction";
	}

	@GetMapping("/userpagea")
	public String showUserPage(Model model,@RequestParam("userdata")Login userl) {
		Login loggeduser = userl;
		model.addAttribute("userdatal", loggeduser);
		return "/actionstarters/useraction";
	}

	@GetMapping("/adminpagea")
	public String showAdminPage(Model model) {
		return "/actionstarters/adminaction";
	}
	
	@GetMapping("/errorpage")
	public String showErrorPage(@RequestParam("error")String msg, Model model) {
		model.addAttribute("error", msg);
		return "/home/error";
	}
}
