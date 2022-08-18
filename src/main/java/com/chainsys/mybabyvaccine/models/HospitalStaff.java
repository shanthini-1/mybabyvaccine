package com.chainsys.mybabyvaccine.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 * @author shan3102
 *
 */
/*
 * composite key
 */
@Entity
@Table(name = "HOSPITAL_STAFF")
public class HospitalStaff {
	
	@Id
	@Column(name = "STAFF_ID")
	private Integer staffId;
	
	@Column(name = "HOSPITAL_ID")
	private int hospitalId;

	@NotNull(message = "*Staff role cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]*$", message = "*please enter valid Staff role ")
	@Column(name = "STAFF_ROLE")
	private String staffRole;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "STAFF_ID", nullable = false, insertable = false, updatable = false)
	private Person hosStaff;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "HOSPITAL_ID", nullable = false, insertable = false, updatable = false)
	private Hospital hospital;

	@OneToMany(mappedBy = "doctor")
	private List<Child> doctorChilds;
	
	public Person getHosStaff() {
		return hosStaff;
	}

	public void setHosStaff(Person hosStaff) {
		this.hosStaff = hosStaff;
	}

	public Hospital getHospital() {
		return hospital;
	}

	public void setHospital(Hospital hospital) {
		this.hospital = hospital;
	}

	public int getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(int hospitalId) {
		this.hospitalId = hospitalId;
	}

	public Integer getStaffId() {
		return staffId;
	}

	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}

	public String getStaffRole() {
		return staffRole;
	}

	public void setStaffRole(String staffRole) {
		this.staffRole = staffRole;
	}

	public String toString() {
		return String.format("%d,%d,%s", hospitalId, staffId, staffRole);
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
			HospitalStaff other = (HospitalStaff) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}

	public int hashCode() {
		return this.staffId;
	}

}
