/**
 * 
 */
package com.chainsys.mybabyvaccine.controller;

import java.util.List;

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

import com.chainsys.mybabyvaccine.models.LocationCode;
import com.chainsys.mybabyvaccine.services.LocationCodeServices;

/**
 * @author shan3102
 *
 */
@Controller
@RequestMapping("/locations")
public class LocationCodeController {

	private static final String REDIRECT_PAGE = "redirect:/locations/listalllocations";
	@Autowired
	private LocationCodeServices locationCodeService;
	
	@GetMapping("/locationfirstview")
	public String showLocationFirstForm() {
		return "/location/location-firstpage";
	}
	
	@GetMapping("listalllocations")
	public String getLocation(Model model) {
		List<LocationCode> locationCodeList = locationCodeService.getLocation();
		model.addAttribute("listAllLocation", locationCodeList);
		return "/location/list-locations";
	}

	@GetMapping("/findlocationform")
	public String showFindLocationForm() {
		return "/location/location-find-form";
	}

	@GetMapping("/fetchlocation")
	public String getLocationById(@RequestParam("id") Integer locId, Model model) {
		LocationCode theloc = locationCodeService.getLocationcodeById(locId);
		model.addAttribute("fetchLocationById", theloc);
		return " find-by-id-location-form";
	}

	@GetMapping("/addlocationform")
	public String showLocationAddForm(Model model) {
		LocationCode theLoc = new LocationCode();
		model.addAttribute("addLocation", theLoc);
		return "/location/add-form-location";
	}

	@PostMapping("/addlocations")
	public String addLocation(@Valid @ModelAttribute("addLocation") LocationCode locationObject,Errors form) {
		if(form.hasErrors())
		{
			return "/location/add-form-location";
		}
		locationCodeService.addLocation(locationObject);
		return REDIRECT_PAGE;
	}

	@GetMapping("/modifylocationform")
	public String showModifyLocationForm() {
		return "/location/location-modify-form";
	}

	@GetMapping("/locationmodifyform")
	public String showLocationUpdateForm(@RequestParam("locId") Integer locId, Model model) {
		LocationCode theLoc = locationCodeService.getLocationcodeById(locId);
		model.addAttribute("modifyLocation", theLoc);
		List<Integer> pincodeList = locationCodeService.getLocationPincodeList();
		model.addAttribute("listAllPincode", pincodeList);
		return "/location/update-form-location";
	}

	@PostMapping("/modifylocations")
	public String updateLocation(@Valid @ModelAttribute("modifyLocation") LocationCode locationCodeObject) {
		locationCodeService.addLocation(locationCodeObject);
		return REDIRECT_PAGE;
	}

	@GetMapping("/deletelocationform")
	public String showDeleteLocationForm() {
		return "/location/location-delete-form";
	}

	@GetMapping("/locationdeleteform")
	public String deleteLocation(@RequestParam("locId") Integer locId) {
		locationCodeService.removeLocation(locId);
		return REDIRECT_PAGE;
	}
}
