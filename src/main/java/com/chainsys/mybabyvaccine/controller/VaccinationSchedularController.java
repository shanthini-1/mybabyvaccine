/**
 * 
 */
package com.chainsys.mybabyvaccine.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.mybabyvaccine.models.Child;
import com.chainsys.mybabyvaccine.models.VaccinationSchedular;
import com.chainsys.mybabyvaccine.models.Vaccine;
import com.chainsys.mybabyvaccine.services.ChildServices;
import com.chainsys.mybabyvaccine.services.VaccinationSchedularServices;
import com.chainsys.mybabyvaccine.services.VaccineServices;

/**
 * @author shan3102
 *
 */
@Controller
@RequestMapping("/vaccinationschedular")
public class VaccinationSchedularController {
	@Autowired
	private VaccinationSchedularServices vaccinationSchedularService;
	@Autowired
	private ChildServices childServices;
	@Autowired
	private VaccineServices vaccineServices;

	@GetMapping("/vaccineSchedularfirstview")
	public String showFormVacSchedulerActionMenu() {
		return "/vaccine-scheduler/vaccine-scheduler-firstpage";
	}

	@GetMapping("/vaccineSchedularViewform")
	public String showVaccinationSchedularAddForm(@RequestParam("childId") int cid, Model model) {
		Child childObj = childServices.findById(cid);
		List<VaccinationSchedular> vacSc = vaccinationSchedularService.getAllVaccineSchedularsByChildId(cid);
		model.addAttribute("childDetail", childObj);
		model.addAttribute("vaccinesch", vacSc);
		return "show-child-vaccineschedular";
	}

	@GetMapping("/vaccineSchedularformfordate")
	public String showFormVacSchedulerByDate() {
		return "show-list-child-by-date-form";
	}

	@GetMapping("/vaccinelistdate")
	public String showListOfToVaccineByDateform(@RequestParam("date") Date date, Model model) {
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
