/**
 * 
 */
package com.chainsys.mybabyvaccine.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.mybabyvaccine.models.Child;
import com.chainsys.mybabyvaccine.models.VaccinationSchedular;
import com.chainsys.mybabyvaccine.services.ChildServices;
import com.chainsys.mybabyvaccine.services.VaccinationSchedularServices;


/**
 * @author shan3102
 *
 */
@Controller
@RequestMapping("/admin/vaccinationschedular")
public class VaccinationSchedularController {
	@Autowired
	private VaccinationSchedularServices vaccinationSchedularService;
	@Autowired
	private ChildServices childServices;

	@GetMapping("/vaccineSchedularformparam")
	public String showFormVacScheduler() {
		return "show-child-vaccineschedular-form";
	}

	@GetMapping("/vaccineSchedularViewform")
	public String showVaccinationSchedularAddForm(@RequestParam("childId") int cid, Model model) {
		Child childObj = childServices.findById(cid);
			List<VaccinationSchedular> vacSc = vaccinationSchedularService.getAllVaccineSchedularsByChildId(cid);
			model.addAttribute("childDetail", childObj);
			model.addAttribute("vaccinesch", vacSc);
			return "show-child-vaccineschedular";
		

	}
}
