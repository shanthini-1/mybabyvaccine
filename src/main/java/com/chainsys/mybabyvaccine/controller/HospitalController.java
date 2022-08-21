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

import com.chainsys.mybabyvaccine.models.Hospital;
import com.chainsys.mybabyvaccine.models.Person;
import com.chainsys.mybabyvaccine.services.HospitalServices;
import com.chainsys.mybabyvaccine.services.LocationCodeServices;
import com.chainsys.mybabyvaccine.services.PersonServices;


/**
 * @author shan3102
 *
 */
@Controller
@RequestMapping("/hospitals")
public class HospitalController {
	private static final String REDIRECT_PAGE = "redirect:/hospital/listallhospitals";
	@Autowired
	private HospitalServices hospitalServices;
	@Autowired
	private PersonServices personServices;
	@Autowired
	private LocationCodeServices locationCodeServices;

	@GetMapping("/hospitalfirstview")
	public String showHospitalActionMenu() {
		return "/hospital/hospital-firstpage";
	}
	
	@GetMapping("/listallhospitals")
	public String getAllHospitals(Model model) {
		List<Hospital> hospitalList = hospitalServices.getHospitals();
		model.addAttribute("listAllTheHospitals", hospitalList);
		return "/hospital/list-hospital";
	}

	@GetMapping("/hospitalfindform")
	public String showHospitalFindForm() {
		return "/hospital/hospital-find-form";
	}

	@GetMapping("/fetchhospital")
	public String getHospitalById(@RequestParam("id") int hospitalId, Model model) {
		Hospital thehospital = hospitalServices.getHospitalById(hospitalId);
		model.addAttribute("fetchHospitalById", thehospital);
		return "/hospital/find-by-id-hospital-form";
	}

	@GetMapping("/addhospitalform")
	public String showHospitalAddForm(Model model) {
		Hospital theHospital = new Hospital();
		model.addAttribute("addHospital", theHospital);
		List<Integer> pincodeList = locationCodeServices.getLocationPincodeList();
		model.addAttribute("listAllTheHospitals", pincodeList);
		List<Person> staffList = personServices.getAllStaff();
		model.addAttribute("listAllStaffs", staffList);
		return "/hospital/add-form-hospital";
	}

	@PostMapping("/addhospitals")
	public String addHospital(@ModelAttribute("addHospital") Hospital theHospital) {
		hospitalServices.addHospital(theHospital);
		return REDIRECT_PAGE;
	}
	@GetMapping("/showhospitalupdateform")
	public String showHospitalModifyForm() {
		return "/hospital/hospital-modify-form";
	}

	@GetMapping("/hospitalmodifyform")
	public String showHospitalUpdateForm(@RequestParam("id") int hospitalId, Model model) {
		Hospital theHospital = hospitalServices.getHospitalById(hospitalId);
		model.addAttribute("modifyHospital", theHospital);
		return "/hospital/update-form-hospital";
	}

	@PostMapping("/modifyhospitals")
	public String updateHospital(@ModelAttribute("modifyHospital") Hospital hospital) {
		hospitalServices.addHospital(hospital);
		return REDIRECT_PAGE;
	}
	@GetMapping("/showhospitaldeleteform")
	public String hospitalDeleteForm() {
		return "hospital-delete-form";
	}

	@GetMapping("/hospitaldeleteform")
	public String deleteHospital(@RequestParam("id") int hospitalId) {
		hospitalServices.removeHospital(hospitalId);
		return "redirect:/admin/hospital/listallhospitals";
	}

//	--------------------------------------
	@GetMapping("/hoscontactfindform")
	public String showContactPersonFindForm() {
		return "/hospital/hospital-contactperson-form";
	}

	@GetMapping("/gethospitalcontactperson")
	public String getHospitalContactPersonById(@RequestParam("id") Integer id, Model model) {
		List<Hospital> hospitals = hospitalServices.getHospitalsByContactperson(id);
		model.addAttribute("listHosByConPersonId", hospitals);
		model.addAttribute("fetchConPerfromPersonById", personServices.getPersonById(id));
		return "/hospital/list-hospitals-by-contact-person-form";
	}
}
