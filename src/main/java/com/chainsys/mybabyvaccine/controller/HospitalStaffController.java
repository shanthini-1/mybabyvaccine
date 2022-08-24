/**
 * 
 */
package com.chainsys.mybabyvaccine.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.mybabyvaccine.models.HospitalStaff;
import com.chainsys.mybabyvaccine.models.Person;
import com.chainsys.mybabyvaccine.services.HospitalServices;
import com.chainsys.mybabyvaccine.services.HospitalStaffServices;
import com.chainsys.mybabyvaccine.services.LocationCodeServices;
import com.chainsys.mybabyvaccine.services.PersonServices;

/**
 * @author shan3102
 *
 */
@Controller
@RequestMapping("/hospitalstaff")
public class HospitalStaffController {
	private static final String REDIRECT_PAGE = "redirect:/hospitalstaff/listallhospitalstaffs";
	@Autowired
	private HospitalStaffServices hospitalStaffServices;
	@Autowired
	private HospitalServices hospitalServices;
	@Autowired
	private PersonServices personServices;
	@Autowired
	private LocationCodeServices codeServices;
	
	@GetMapping("/hospitalstafffirstview")
	public String showHospitalActionMenu() {
		return "/hospital/hospital-staff-firstpage";
	}

	/*
	 * list all hospital staff
	 */
	@GetMapping("/listallhospitalstaffs")
	public String getAllHospitalStaffs(Model model) {
		List<HospitalStaff> hospitalStaffList = hospitalStaffServices.getHospitalStaffs();
		model.addAttribute("listAllHospitalStaffs", hospitalStaffList);
		return "/hospital/list-hospital-staff";
	}

//-------------------------------
	/*
	 * fetch hospital staff by staffId - staffId giving form to find existence
	 */
	@GetMapping("/fetchstaffidform")
	public String showHospitalStaffFindForm() {
		return "/hospital/hospitalstaff-find-form";
	}

	/*
	 * fetch hospital staff by staffId
	 */

	@GetMapping("/gethospitalstaff")
	public String getHospitalStaffById(@RequestParam("id") Integer staffId, Model model) {
		Optional<HospitalStaff> theHospitalStaff = hospitalStaffServices.getHospitalStaffById(staffId);
		model.addAttribute("fetchStaffDetailsById", theHospitalStaff);
		return "/hospital/find-by-id-staff-form";
	}
//	-------------------------------------

	/*
	 * add staff form to enter details
	 */
	@GetMapping("/addhospitalstaffform")
	public String showHospitalStaffAddForm(Model model) {
		HospitalStaff theHospitalStaff = new HospitalStaff();
		model.addAttribute("addHospitalStaff", theHospitalStaff);
		List<Integer> pincodelist = codeServices.getLocationPincodeList();
		model.addAttribute("listAllpincode", pincodelist);
		List<Person> staffList = personServices.getAllStaff();
		model.addAttribute("listAllStaffs", staffList);
		return "/hospital/add-form-hospital-staff";
	}

	/*
	 * list staffs after adding staff details
	 */
	@PostMapping("addhospitalstaffs")
	public String addHospitalStaff(@ModelAttribute("addHospitalStaff") HospitalStaff theHospitalStaff) {
		hospitalStaffServices.addHospitalStaff(theHospitalStaff);
		return REDIRECT_PAGE;
	}

	/*
	 * update staff details by staffId - staff id giving form to find
	 */
	@GetMapping("/hospitalstaffmodifyform")
	public String showHospitalStaffmodifyForm() {
		return "/hospital/hospitalstaff-modify-form";
	}

	/*
	 * update staff details by staffId - staff details giving form
	 */
	@GetMapping("/hospitalstaffupdateform")
	public String showHospitalStaffUpdate(@RequestParam("id") int hospitalId, Model model) {
		Optional<HospitalStaff> theHospitalStaff = hospitalStaffServices.getHospitalStaffById(hospitalId);
		model.addAttribute("modifyHospitalStaff", theHospitalStaff);
		return "/hospital/update-form-hospital-staff";
	}

	/*
	 * update staff details and list staffs after updating
	 */
	@PostMapping("/modifyhospitalstaffs")
	public String updateHospitalStaff(@ModelAttribute("modifyHospitalStaff") HospitalStaff hospitalStaff) {
		hospitalStaffServices.addHospitalStaff(hospitalStaff);
		return REDIRECT_PAGE;
	}

	/*
	 * Delete hospital staff by staffId form
	 */
	@GetMapping("/showhospitalstaffdeleteform")
	public String showHospitalStaffRemoveForm() {
		return "/hospital/hospitalstaff-delete-form";
	}

	/*
	 * list show after staff deleted
	 */
	@GetMapping("/hospitalstaffdeleteform")
	public String deleteHospitalStaff(@RequestParam("id") Integer hospitalStaffId) {
		hospitalStaffServices.removeHospitalStaff(hospitalStaffId);
		return REDIRECT_PAGE;
	}

//	---------------------------------
	/*
	 * fetch staff profile details by Staff id - id giving form
	 */

	@GetMapping("/hospitalstaffdetailsfindform")
	public String showHospitalStaffDetailsFindForm() {
		return "/hospital/hospital-staff-details-form";
	}

	/*
	 * display fetched staff profile details by Staff id
	 */
	@GetMapping("/gethospitalstaffpersondetails")
	public String getHospitalStaffDetailsById(@RequestParam("id") Integer id, Model model) {

		Optional<HospitalStaff> thehosstaff = hospitalStaffServices.getHospitalStaffById(id);
		model.addAttribute("fetchHospitalStaffById", thehosstaff);
		if (thehosstaff.isPresent()) {
			int idValue = thehosstaff.get().getHospitalId();
			model.addAttribute("fetchHospitalById", hospitalServices.getHospitalById(idValue));
			model.addAttribute("fetchstaffById", personServices.getPersonById(thehosstaff.get().getStaffId()));
		}
		return "/hospital/find-by-id-hospital-staff-form";
	}
	@GetMapping("/getdocdetails")
	public String getDoctorsDetails(Model model) {
		List<HospitalStaff> hos =hospitalStaffServices.getHospitalStaffByrole();
		List<Person> doc = new ArrayList<>();
		for (HospitalStaff doctors : hos) {
			doc.add(personServices.getPersonById(doctors.getStaffId()));
		}
		model.addAttribute("staffDoc", hos);
		model.addAttribute("docName", doc);
		return "";

	}
	
}
