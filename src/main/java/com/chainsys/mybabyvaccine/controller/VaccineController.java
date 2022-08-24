/**
 * 
 */
package com.chainsys.mybabyvaccine.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.mybabyvaccine.models.Vaccine;
import com.chainsys.mybabyvaccine.services.VaccineServices;


/**
 * @author shan3102
 *
 */
@Controller
@RequestMapping("/vaccines")
public class VaccineController {
	private static final String REDIRECT_PAGE = "redirect:/vaccines/listallvaccines";
	private static final String ERROR = "error";
	@Autowired
	private VaccineServices vacServices;
	
	@GetMapping("/vaccinefirstview")
	public String showChildActionMenu() {
		return "/vaccine/vaccine-firstpage";
	}

	@GetMapping("/listallvaccines")
	public String getVaccines(Model model) {
		List<Vaccine> vaclist = vacServices.getVaccines();
		model.addAttribute("allvaccines", vaclist);
		return "/vaccine/list-vaccines";
	}

	@GetMapping("/listallvaccinesuser")
	public String getVaccinesuser(Model model) {
		List<Vaccine> vaclist = vacServices.getVaccines();
		model.addAttribute("allvaccines", vaclist);
		return "/vaccine/list-vaccines-user";
	}

	@GetMapping("/getvaccine")
	public String fetchVaccineform() {
		return "/vaccine/fetch-vaccine-form";
	}

	@GetMapping("/fetchvaccine")
	public String getVaccineById(@RequestParam("id") int vacId, Model model) {
		try {
		Vaccine theVac = vacServices.getVaccinesById(vacId);
		model.addAttribute("findvaccinebyid", theVac);
		}catch (Exception e) {
			model.addAttribute(ERROR, "Unable Add User");
			return REDIRECT_PAGE;
		}
		return "/vaccine/findbyid-vaccine-form";
	}

	@GetMapping("/vaccineaddform")
	public String showVaccineAddForm(Model model) {
		Vaccine theVac = new Vaccine();
		model.addAttribute("addvaccine", theVac);
		return "/vaccine/add-vaccine-form";
	}

	@PostMapping("/addvaccines")
	public String addNewVaccines(@ModelAttribute("addvaccine") Vaccine vaccine,Model model) {
		try {
		vacServices.addVaccine(vaccine);
		}catch (Exception e) {
			model.addAttribute(ERROR, "Unable Add User");
			return REDIRECT_PAGE;
		}
		return REDIRECT_PAGE;
	}

	@GetMapping("/vaccinemodifyform")
	public String showVaccineUpdateForm(@RequestParam("id") int id, Model model) {
		try {
			Vaccine theVac = vacServices.getVaccinesById(id);
			model.addAttribute("modifyvaccine", theVac);
		}catch (Exception e) {
			model.addAttribute(ERROR, "Invalid user Detail");
			return REDIRECT_PAGE;
		}
		return "/vaccine/update-vaccine-form";
	}

	@PostMapping("/modifyvaccines")
	public String modifyingVaccine(@ModelAttribute("modifyvaccine") Vaccine vac,Model model) {
		try{
			vacServices.addVaccine(vac);
		}catch(Exception e){
			model.addAttribute(ERROR, "Invalid user Detail");
			return REDIRECT_PAGE;
		}
		return REDIRECT_PAGE;
	}

	@GetMapping("/deletevaccine")
	public String deleteVaccineform() {
		return "/vaccine/delete-vaccine-form";
	}

	@GetMapping("/vaccinedeleteform")
	public String showVaccineDeleteForm(@RequestParam("id") int id, Model model) {
		try {
		vacServices.removeVaccine(id);
		}catch(Exception e) {
			model.addAttribute(ERROR, "Invalid User Detail");
			return REDIRECT_PAGE;
		}
		return REDIRECT_PAGE;
	}
	
}
