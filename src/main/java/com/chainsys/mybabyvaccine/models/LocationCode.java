package com.chainsys.mybabyvaccine.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


/**
 * @author shan3102
 *
 */
@Entity
@Table(name = "LOCATION_CODE")
public class LocationCode {
	@Id
	@Max(value=699999,message="*pincode should not be greater than 6999999 ")
	@Min(value=600000,message="*pincode should not be less than 600000")
	@Column(name="PIN_CODE")
	private int pinCode;
	
	@NotNull(message = "*District cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]*$", message = "*please enter valid district")
	@Column(name = "DISTRICT")
	private String district;
	
	@NotNull(message = "*State Name cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]*$", message = "*please enter valid State Name")
	@Column(name = "STATE_NAME")
	private String stateName;
	
	@NotNull(message = "*Country Name cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]*$", message = "*please enter valid Country Name")
	@Column(name = "COUNTRY")
	private String country;

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String toString() {
		return String.format("%s,%s,%s,%d", district, stateName, country, pinCode);
	}

	public boolean equals(Object obj) {
		boolean result = false;
		if (obj == null) {
			return false;
		}
		if (this.getClass() != obj.getClass())
			return false;
		Class<? extends Object> c1 = obj.getClass();
		if (c1 == this.getClass()) {
			LocationCode other = (LocationCode) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}

	public int hashCode() {
		return this.pinCode;
	}
}
