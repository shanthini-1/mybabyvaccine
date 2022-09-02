/**
 * 
 */
package com.chainsys.mybabyvaccine.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.mybabyvaccine.models.Child;
import com.chainsys.mybabyvaccine.models.VaccinationSchedular;
import com.chainsys.mybabyvaccine.models.VaccinationStatus;
import com.chainsys.mybabyvaccine.models.Vaccine;
import com.chainsys.mybabyvaccine.services.ChildServices;
import com.chainsys.mybabyvaccine.services.VaccinationSchedularServices;
import com.chainsys.mybabyvaccine.services.VaccinationStatusServices;
import com.chainsys.mybabyvaccine.services.VaccineServices;

/**
 * @author shan3102
 *
 */
@Controller
@RequestMapping("/vacschedular")
public class VaccinationSchedularController {
	@Autowired
	private VaccinationSchedularServices vaccinationSchedularService;
	@Autowired
	private ChildServices childServices;
	@Autowired
	private VaccineServices vaccineServices;
	@Autowired
	private VaccinationStatusServices vaccinationStatusServices;

	@GetMapping("/vaccineSchedularfirstview")
	public String showFormVacSchedulerActionMenu() {
		return "/vaccine-scheduler/vaccine-scheduler-firstpage";
	}

	@GetMapping("/listallvaccineSchedule")
	public String showVaccinationSchedulerList(Model model) {
		long count =0;
		List<Long> countlist = new ArrayList<Long>();
		List<String> vaccStatus = new ArrayList<String>();
		List<VaccinationSchedular> vacSc  = vaccinationSchedularService.getVaccinationSchedulars();
		for (VaccinationSchedular vaccinationSchedular : vacSc) {
			Date date1 = vaccinationSchedular.getDateToVaccinate();
			LocalDate dateA = date1.toLocalDate();
			LocalDate dateB = LocalDate.now();	 
			count  = ChronoUnit.DAYS.between(dateB, dateA);
			VaccinationStatus vastsobj = vaccinationStatusServices.getVaccinationStatusByIds(vaccinationSchedular.getChildId(),vaccinationSchedular.getVaccineId());
			if(count>0) {
					countlist.add(count);
				    vaccStatus.add("Not vaccinated");
			}else {
				countlist.add((long) 0);
					if(vastsobj== null) 
						vaccStatus.add("Missed Vaccination");
					else
						vaccStatus.add(vastsobj.getVaccinatedStatus());
				}
			
		}
		model.addAttribute("listAllSchedules", vacSc);
		model.addAttribute("vacSts", vaccStatus);
		model.addAttribute("vacEx", countlist);
		return "/vaccine-scheduler/list-all-vaccine-scheduler";
	}
	
	@GetMapping("/vacSchchildform")
	public String showFormVacSchedulerByChild(Model model) {
		
		  List<Child>childidlist = childServices.getChilds();
		  model.addAttribute("listAllChildrenId", childidlist);
		 
		return "/vaccine-scheduler/show-list-child-vaccine-form";
	}
	
	@GetMapping("/vaccineSchedularViewform")
	public String showVaccinationSchedularAddForm(@RequestParam("id") int cid, Model model) {
		Child childObj = childServices.findById(cid);
		List<VaccinationSchedular> vacSc = vaccinationSchedularService.getAllVaccineSchedularsByChildId(cid);
		model.addAttribute("childDetail", childObj);
		model.addAttribute("vaccinesch", vacSc);
		
		return "/vaccine-scheduler/show-child-vaccineschedular";
	}

	@GetMapping("/vaccineSchedularformfordate")
	public String showFormVacSchedulerByDate() {
		return "/vaccine-scheduler/show-list-child-by-date-form";
	}

	@GetMapping("/vaccinelistdate")
	public String showListToVaccineByDateform(@RequestParam("date") Date date, Model model) {
		List<VaccinationSchedular> vacSc = null;
		try {
			vacSc = vaccinationSchedularService.getAllVaccineSchedulesByDate(date);
		} catch (Exception e) {
			String msge = "please choose valid date:";
			model.addAttribute("errora", msge + date);
			return "redirect:/vaccinationschedular/vaccineSchedularformfordate";
		}
		if (vacSc != null) {
			for (VaccinationSchedular vaccinationSchedular : vacSc) {
				Child childObj = childServices.findById(vaccinationSchedular.getChildId());
				Vaccine vaccineObject = vaccineServices.getVaccinesById(vaccinationSchedular.getVaccineId());
				model.addAttribute("childDetail", childObj);
				model.addAttribute("vaccineDetail", vaccineObject);
			}
			model.addAttribute("vaccinesch", vacSc);
			return "/vaccine-scheduler/list-child-by-date";
		} else {
			String msg = "No Schedules for the date:";
			model.addAttribute("error", msg + date);
			return "redirect:/vaccinationschedular/vaccineSchedularformfordate";
		}
	}
}
