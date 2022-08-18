package com.chainsys.mybabyvaccine.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.mybabyvaccine.models.Login;
import com.chainsys.mybabyvaccine.services.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private LoginService loginService;

	@GetMapping("/loginform")
	public String showLoginForm(Model model) {
		Login login = new Login();
		model.addAttribute("userLogin", login);
		return "/home/loginpage";
	}

	@PostMapping("/checklogin")
	public String addNewUser(@Valid @ModelAttribute("userLogin") Login theUser, Model model, Errors err) {
		Login userA = loginService.fetchExistingUser(theUser);
		if (err.hasErrors()) {
			return "redirect:/login/loginform";
		}
		if (userA != null) {
			if ("Staff".equals(userA.getPersonCategory())) {
				return "redirect:/login/staffpagea";
			} else if ("User".equals(userA.getPersonCategory())) {
				return "redirect:/login/userpagea";
			} else if ("Admin".equals(userA.getPersonCategory())) {
				return "redirect:/login/adminpagea";
			} else {
				model.addAttribute("error", "Invalid Person Category choosed");
				return "redirect:/login/loginform";
			}
		} else {
			model.addAttribute("error", "Invalid Email or Password");
			return "redirect:/login/loginform";
		}
	}

	@GetMapping("/staffpagea")
	public String showStaffPage(Model model) {
		return "actionstarters/staffaction";
	}

	@GetMapping("/userpagea")
	public String showUserPage(Model model) {
		return "actionstarters/useraction";
	}

	@GetMapping("/adminpagea")
	public String showAdminPage(Model model) {
		return "actionstarters/adminaction";
	}
}
