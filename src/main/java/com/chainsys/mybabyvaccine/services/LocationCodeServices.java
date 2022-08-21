/**
 * 
 */
package com.chainsys.mybabyvaccine.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.mybabyvaccine.models.LocationCode;
import com.chainsys.mybabyvaccine.repository.LocationCodeRepository;

/**
 * @author shan3102
 * @date 02-aug-2022
 */
@Service
public class LocationCodeServices {
	@Autowired
	private LocationCodeRepository locationCodeRepo;

	public List<LocationCode> getLocation() {
		return locationCodeRepo.findAll();
	}

	public LocationCode addLocation(LocationCode loc) {
		return locationCodeRepo.save(loc);
	}

	public void removeLocation(int locId) {
		locationCodeRepo.deleteById(locId);
	}

	public LocationCode getLocationcodeById(int locId) {
		return locationCodeRepo.findByPinCode(locId);
	}

	public List<Integer> getLocationPincodeList() {
		return locationCodeRepo.listOfPincode();
	}
}
