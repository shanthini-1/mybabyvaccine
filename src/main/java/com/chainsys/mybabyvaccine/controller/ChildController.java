package com.chainsys.mybabyvaccine.controller;
/*
 * 
 * @author
 */

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.mybabyvaccine.models.Child;
import com.chainsys.mybabyvaccine.models.Hospital;
import com.chainsys.mybabyvaccine.models.HospitalStaff;
import com.chainsys.mybabyvaccine.models.Person;
import com.chainsys.mybabyvaccine.services.ChildServices;
import com.chainsys.mybabyvaccine.services.HospitalServices;
import com.chainsys.mybabyvaccine.services.HospitalStaffServices;
import com.chainsys.mybabyvaccine.services.PersonServices;

@Controller
@RequestMapping("/children")
public class ChildController {
	private static final String REDIRECT_PAGE = "redirect:/children/listallchilds";
	private static final String REDIRECT_PAGE_ADD_FORM = "redirect:/children/addchildform";
	@Autowired
	private ChildServices childServices;
	@Autowired
	private HospitalServices hospitalServices;
	@Autowired
	private HospitalStaffServices hospitalStaffServices;
	@Autowired
	private PersonServices personServices;
	
	
	
	@GetMapping("/childfirstview")
	public String showChildActionMenu() {
		return "/child/child-firstpage";
	}

	@GetMapping("/listallchilds")
	public String getAllChilds(Model model) {
		List<Child> childList = childServices.getChilds();
		model.addAttribute("listAllChilds", childList);
		return "/child/list-childs";
	}

	@GetMapping("/fetchchildform")
	public String showChildDetailForm(Model model) {
		List<Integer>childidlist = childServices.getAllChildId();
		model.addAttribute("listAllChildrenId", childidlist);
		return "/child/fetch-child-by-id-form";
	}

	@GetMapping("/fetchchild")
	public String getChildById(@RequestParam("cid") int childId, Model model) {
		Child theChild = childServices.findById(childId);
		model.addAttribute("fetchChildById", theChild);
		model.addAttribute("childHospitaldetails", hospitalServices.getHospitalById(theChild.getHospitalId()));
		model.addAttribute("childDoctordetails", personServices.getPersonById(theChild.getDoctorId()));
		model.addAttribute("childDaddetails", personServices.getPersonById(theChild.getFatherId()));
		model.addAttribute("childMomdetails", personServices.getPersonById(theChild.getMotherId()));
		model.addAttribute("childGuardianDetails",personServices.getPersonById(theChild.getGuardianId()));
		return "/child/find-by-id-child-form";
	}

	@GetMapping("/addchildform")
	public String showChildAddForm(Model model) {
		Child theChild = new Child();
		model.addAttribute("addChild", theChild);
		List<Hospital> hosList = hospitalServices.getHospitals();
		model.addAttribute("listOfHospital",hosList);
		List<HospitalStaff> docList = hospitalStaffServices.getHospitalStaffDoctor();
		model.addAttribute("listOfDoctor", docList);
		List<Person> guardianlist = personServices.getPersons();
		model.addAttribute("listOfGuardian", guardianlist);
		List<Person> fatherlist = new ArrayList<>();
		for (Person dad :guardianlist ) {
			if(dad.getGender().equals("Male")) {
				fatherlist.add(dad);
			}
		}
		model.addAttribute("listOfFather", fatherlist);
		List<Person> motherlist = new ArrayList<>();
		for (Person mom :guardianlist ) {
			if(mom.getGender().equals("Female")) {
				motherlist.add(mom);
			}
		}
		model.addAttribute("listOfMother", motherlist);
		List<HospitalStaff> hos =hospitalStaffServices.getHospitalStaffByrole();
		List<Person> doc = new ArrayList<>();
		for (HospitalStaff doctors : hos) {
			doc.add(personServices.getPersonById(doctors.getStaffId()));
		}
		
		model.addAttribute("staffDoc", hos);
		model.addAttribute("docName", doc);
		return "/child/add-form-child";
	}

	@PostMapping("addchilds")
	public String addChild(@Valid @ModelAttribute("addChild") Child theChild,Errors error,Model model) {
		try {
		childServices.addChild(theChild);
		}
		catch (Exception e) {
			model.addAttribute("error", "Wrong input enteries");
			return REDIRECT_PAGE_ADD_FORM;
		}
		String msg ="Added successfully";
		model.addAttribute("result",msg);
		return REDIRECT_PAGE_ADD_FORM;
	}

	@GetMapping("/updatechildform")
	public String showChildUpdateDetailForm() {
		return "/child/update-child-by-id-form";
	}

	@GetMapping("/childmodifyform")
	public String showChildUpdateForm(@RequestParam("childId") int childId, Model model) {
		Child theChildren = childServices.findById(childId);
		model.addAttribute("modifyChild", theChildren);
		List<Hospital> hosList = hospitalServices.getHospitals();
		model.addAttribute("listOfHospital",hosList);
		List<HospitalStaff> docList = hospitalStaffServices.getHospitalStaffDoctor();
		model.addAttribute("listOfDoctor", docList);
		List<Person> guardianlist = personServices.getPersons();
		model.addAttribute("listOfGuardian", guardianlist);
		List<Person> fatherlist = new ArrayList<>();
		for (Person dad :guardianlist ) {
			if(dad.getGender().equals("Male")) {
				fatherlist.add(dad);
			}
		}
		model.addAttribute("listOfFather", fatherlist);
		List<Person> motherlist = new ArrayList<>();
		for (Person mom :guardianlist ) {
			if(mom.getGender().equals("Female")) {
				motherlist.add(mom);
			}
		}
		model.addAttribute("listOfMother", motherlist);
		List<HospitalStaff> hos =hospitalStaffServices.getHospitalStaffByrole();
		List<Person> doc = new ArrayList<>();
		for (HospitalStaff doctors : hos) {
			doc.add(personServices.getPersonById(doctors.getStaffId()));
		}
		
		model.addAttribute("staffDoc", hos);
		model.addAttribute("docName", doc);
		return "/child/update-form-child";
	}

	@PostMapping("/modifychilds")
	public String updateChildForm(@ModelAttribute("modifyChild") Child childObj) {
		childServices.addChild(childObj);
		return REDIRECT_PAGE;
	}

	@GetMapping("/Deletechildform")
	public String showChildDeleteDetailForm() {
		return "/child/delete-child-by-id-form";
	}

	@GetMapping("/childdeleteform")
	public String deleteChild(@RequestParam("childId") int childId) {
		childServices.removeChild(childId);
		return REDIRECT_PAGE;
	}

//	----------------------------------
	@GetMapping("/fetchhospitalandchildform")
	public String showHospitalChildDetailForm() {
		return "fetch-hospital-child-form";
	}

	@GetMapping("/childhospitaldetails")
	public String getChildHospitalDetails(@RequestParam("id") int childId, Model model) {
		Child theChild = childServices.findById(childId);
		model.addAttribute("childDetails", theChild);
		model.addAttribute("childHospitaldetails", hospitalServices.getHospitalById(theChild.getHospitalId()));
		return "find-by-id-child-hospital-form";
	}

//	-----------------------
	@GetMapping("/fetchdoctorandchildform")
	public String showDoctorChildDetailForm() {
		return "fetch-doctor-child-form";
	}

	@GetMapping("/childdoctordetails")
	public String getChilddoctorDetails(@RequestParam("id") int childId, Model model) {
		Child theChild = childServices.findById(childId);
		model.addAttribute("childDetails", theChild.getChildId());
		model.addAttribute("childDoctordetails", hospitalStaffServices.getHospitalStaffById(theChild.getDoctorId()));
		return "find-by-id-child-doctor-form";
	}

//	------------------------
	@GetMapping("/fetchchildandparent")
	public String showChildparentDetailForm() {
		return "fetch-parent-child-form";
	}

	@GetMapping("/childparentdetails")
	public String getChildParentDetails(@RequestParam("id") int childId, Model model) {
		Child theChild = childServices.findById(childId);
		model.addAttribute("childdetails", theChild);
		model.addAttribute("childFatherdetails", personServices.getPersonById(theChild.getFatherId()));
		model.addAttribute("childMotherdetails", personServices.getPersonById(theChild.getMotherId()));
		return "find-by-id-child-parent-form";
	}

	@GetMapping("/fetchchildandguardian")
	public String showChildGuardianDetailForm() {
		return "fetch-guardian-child-form";
	}

	@GetMapping("/childguardiandetails")
	public String getChildGuardianDetails(@RequestParam("id") int childId, Model model) {
		Child theChild = childServices.findById(childId);
		model.addAttribute("childdetails", theChild);
		model.addAttribute("childFatherdetails", personServices.getPersonById(theChild.getFatherId()));
		model.addAttribute("childMotherdetails", personServices.getPersonById(theChild.getMotherId()));
		model.addAttribute("childGuardianDetails", personServices.getPersonById(theChild.getGuardianId()));
		return "find-by-id-child-guardian-form";
	}

//	-----------------------------
	@GetMapping("/fetchchildbyhospitalid")
	public String showChildHospitalFindForm() {
		return "list-child-by-hospital-form";
	}

	@GetMapping("listchildbyhospitalid")
	public String listChildByHospitalId(@RequestParam("hospitalId") int hospitalId, Model model) {
		Hospital hospital = hospitalServices.getHospitalById(hospitalId);
		model.addAttribute("hospital", hospital);
		List<Child> childs = childServices.getChildByHospitalId(hospitalId);
		model.addAttribute("listofchildbyhospital", childs);
		return "list-childs-by-hospital";
	}

//	----------------------------------
	@GetMapping("/fetchchildbydoctorid")
	public String showChildDoctorFindForm() {
		return "list-child-by-doctor-form";
	}

	@GetMapping("listchildbydoctorid")
	public String listChildByDoctorId(@RequestParam("doctorId") Integer doctorId, Model model) {
		Optional<HospitalStaff> hospitalStaff = hospitalStaffServices.getHospitalStaffById(doctorId);
		model.addAttribute("hospitalDoctor", hospitalStaff);
		List<Child> childs = childServices.getChildDoctorId(doctorId);
		model.addAttribute("listofchildbydoctor", childs);
		return "list-childs-by-doctor";
	}

//	-------------------------------------
	@GetMapping("/fetchchildbyparentid")
	public String showChildParentFindForm() {
		return "list-child-by-parent-form";
	}

	@GetMapping("listchildbyparentid")
	public String listChildByFatherId(@RequestParam("fId") Integer fatherId, @RequestParam("mId") Integer motherId,
			Model model) {
		Person father = personServices.getPersonById(fatherId);
		Person mother = personServices.getPersonById(motherId);
		model.addAttribute("childsFather", father);
		model.addAttribute("childsMother", mother);
		List<Child> childs = childServices.getChildFatherMotherId(fatherId, motherId);
		model.addAttribute("listofchildbyparent", childs);
		return "list-childs-by-parent";
	}

//	--------------------------

	@GetMapping("/fetchchildbyguardian")
	public String showChildGuardianFindForm() {
		return "list-child-by-guardian-form";
	}

	@GetMapping("listchildbyuserid")
	public String listChildByGuardianId(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Integer uIdA=(Integer)session.getAttribute("uId");
		List<Child> childs = childServices.getChildGuardianId(uIdA);
		model.addAttribute("listofchildbyguardian", childs);
		return "/child/list-childs-by-user";
	}

}
