/**
 * 
 */
package com.chainsys.mybabyvaccine.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.mybabyvaccine.compositemodel.ChildVaccineCompositeTable;
import com.chainsys.mybabyvaccine.models.Child;
import com.chainsys.mybabyvaccine.models.Hospital;
import com.chainsys.mybabyvaccine.models.HospitalStaff;
import com.chainsys.mybabyvaccine.models.VaccinationStatus;
import com.chainsys.mybabyvaccine.models.Vaccine;
import com.chainsys.mybabyvaccine.services.ChildServices;
import com.chainsys.mybabyvaccine.services.HospitalServices;
import com.chainsys.mybabyvaccine.services.HospitalStaffServices;
import com.chainsys.mybabyvaccine.services.VaccinationStatusServices;
import com.chainsys.mybabyvaccine.services.VaccineServices;


/**
 * @author shan3102
 *
 */
@Controller
@RequestMapping("/vaccinationstatus")
public class VaccinationStatusController {
	private static final String REDIRECT_PAGE = "redirect:/vaccinationstatus/listallvaccinationstatus";
	@Autowired
	private VaccinationStatusServices vaccinationStatusService;

	@Autowired
	private ChildServices childServices;
	@Autowired
	private VaccineServices vaccineServices;
	@Autowired
	private HospitalServices hospitalServices;
	@Autowired
	private HospitalStaffServices hospitalStaffServices;
	
	@GetMapping("/listallvaccinationstatus")
	public String getVaccinationStatus(Model model) {
		List<VaccinationStatus> vaccinationStatusList = vaccinationStatusService.getVaccinationStatus();
		model.addAttribute("allVaccinationStatuslist", vaccinationStatusList);
		return "/vaccine-status/list-vaccination-status";
	}

//---------------
	@GetMapping("/vaccinationstatusaddform")
	public String showVaccinationStatusAddForm(Model model) {
		VaccinationStatus theVac = new VaccinationStatus();
		model.addAttribute("addvaccinationStatus", theVac);
		List<Integer>childidlist = childServices.getAllChildId();
		model.addAttribute("listAllChildrenId", childidlist);
		List<Vaccine> vaclist = vaccineServices.getVaccines();
		model.addAttribute("allvaccines", vaclist);
		List<Hospital> hospitalList = hospitalServices.getHospitals();
		model.addAttribute("listAllTheHospitals", hospitalList);
		List<HospitalStaff> attenderList = hospitalStaffServices.getHospitalStaffAttender();
		model.addAttribute("listAllAttenders", attenderList);
		return "/vaccine-status/add-vaccine-status-form";
	}

	@PostMapping("/addvaccinationstatuss")
	public String addNewVaccinationStatuss(@ModelAttribute("addvaccinationStatus") VaccinationStatus theVac) {
		vaccinationStatusService.addVaccinationStatus(theVac);
		return REDIRECT_PAGE;
	}

//-----------------
	
	@GetMapping("/modifyvaccinationstatusform")
	public String modifyingVaccinationStatusForm() {
		return "/vaccine-status/update-vaccine-status-form";
	}

	@GetMapping("/vaccinationstatusmodifyform")
	public String showVaccinationStatusUpdateForm(@RequestParam("cid") int childId, @RequestParam("vid") int vacId,
			Model model) {
		ChildVaccineCompositeTable compObj = new ChildVaccineCompositeTable(childId, vacId);
		Optional<VaccinationStatus> theVac = vaccinationStatusService.getVaccinationStatussById(compObj);
		model.addAttribute("modifyvaccinationStatus", theVac);
		return "/vaccine-status/update-vaccinationstatus-form";
	}

	@PostMapping("/modifyvaccinationstatuschild")
	public String modifyVaccineStatusForm(@ModelAttribute("modifyvaccinationStatus") VaccinationStatus vaccstatus) {
		vaccinationStatusService.addVaccinationStatus(vaccstatus);
		return REDIRECT_PAGE;
	}

//	-------------------------
	@GetMapping("/deletevaccinationstatusform")
	public String deleteVaccinationStatusForm() {
		return "/vaccine-status/delete-vaccine-status-form";
	}

	@GetMapping("/vaccinationStatusdeleteform")
	public String showVaccinationStatusDeleteForm(@RequestParam("childId") int childId,
			@RequestParam("vacId") int vacId, Model model) {
		ChildVaccineCompositeTable compObj = new ChildVaccineCompositeTable(childId, vacId);
		vaccinationStatusService.removeVaccinationStatus(compObj);
		return REDIRECT_PAGE;
	}

//-----------------------------
	@GetMapping("/listchildrenbyvacid")
	public String listChildrenByVaccine() {
		return "/vaccine-status/list-children-form-by-vaccine";
	}

	@GetMapping("/vaccineslistforchildren")
	public String getChildrenListByVaccineId(@RequestParam("id") int vaccineId, Model model) {
		List<VaccinationStatus> babies = vaccinationStatusService.getChildrenListByVacId(vaccineId);
		model.addAttribute("listofvaccineschild", babies);
		return "vaccine-status/list-children-by-vaccine-form";
	}

//-----------------
	@GetMapping("/listvaccinebycid")
	public String listVaccineByChild() {
		return "list-vaccine-form-by-child";
	}

	@GetMapping("/childrenlistforvaccines")
	public String getVaccineListByChildId(@RequestParam("id") int childId, Model model) {
		List<VaccinationStatus> vaccines = vaccinationStatusService.getVaccineListByChildId(childId);
		model.addAttribute("listofvaccines", vaccines);
		return "/vaccine-status/list-vaccines-by-child-form";
	}

//-----------------------------
	@GetMapping("/fetchchildvaccinebyidform")
	public String listChildVaccineById() {
		return "/vaccine-status/fetch-childvaccine-form-by-id";
	}

	@GetMapping("/fetchvaccinationstatusbyid")
	public String getVaccinationStatusById(@RequestParam("cid") int childId, @RequestParam("vid") int vacId,
			Model model) {
		ChildVaccineCompositeTable compObj = new ChildVaccineCompositeTable(childId, vacId);
		Optional<VaccinationStatus> theVac = vaccinationStatusService.getVaccinationStatussById(compObj);
		model.addAttribute("findVaccinationStatusById", theVac);
		return "/vaccine-status/findbyid-vaccinationstatus-form";
	}

//------------------------------
	@GetMapping("/childvaccinedetails")
	public String detailsOfVaccinebychild() {
		return "/vaccine-status/vaccineslistchild";
	}
	
	@GetMapping("/childvaccinestatuslistbychild")
	public String listChildbyVaccine(@RequestParam("vId") int vaccineId, Model model) {
		Vaccine vac = vaccineServices.getVaccinesById(vaccineId);
		model.addAttribute("getVaccine", vac);
		List<VaccinationStatus>  vaccinationStatus = vaccinationStatusService.getChildrenListByVacId(vaccineId);
		model.addAttribute("childvacdetailslist", vaccinationStatus);
		return "/vaccine-status/list-childs-vaccinestatus";
	}
	@GetMapping("/detailsofchildvaccine")
	public String detailsOfChildVaccine() {
		return "/vaccine-status/childrenlistvaccine";
	}

	@GetMapping("/childrenvaccinelist")
	public String listOfVaccinebyChildren(@RequestParam("cid") int childId, Model model) {
		Child child = childServices.findById(childId);
		model.addAttribute("chilinfo", child);
		List<VaccinationStatus> vaccinesByChild = vaccinationStatusService.getVaccineListByChildId(childId);
		model.addAttribute("vaccinestatus", vaccinesByChild);
		return "/vaccine-status/child-vaccinestatus-detail-form";
	}

}