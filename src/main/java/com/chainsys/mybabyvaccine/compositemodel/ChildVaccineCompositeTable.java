package com.chainsys.mybabyvaccine.compositemodel;

import java.io.Serializable;

import javax.persistence.Column;

public class ChildVaccineCompositeTable implements Serializable {

	private static final long serialVersionUID = 1L;

	@Column(name = "CHILD_ID")
	private int childId;
	@Column(name = "VACCINE_ID")
	private int vaccineId;
	
	
	public ChildVaccineCompositeTable() {

	}

	public ChildVaccineCompositeTable(int childId, int vaccineId) {
		this.childId = childId;
		this.vaccineId = vaccineId;
	}

	public int getChildId() {

		return childId;
	}

	public void setChildId(int childId) {
		this.childId = childId;
	}

	public int getVaccineId() {
		return vaccineId;
	}

	public void setVaccineId(int vaccineId) {
		this.vaccineId = vaccineId;
	}
	
	public String toString() {
		return String.format("%d,%d", childId, vaccineId);
	}

	public boolean equals(Object obj) {
		boolean result = false;
		if (obj == null) {
			return false;
		}
		Class<? extends Object> c1 = obj.getClass();
		if (c1 == this.getClass()) {
			ChildVaccineCompositeTable other = (ChildVaccineCompositeTable) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}

	public int hashCode() {
		return this.childId + this.vaccineId;
	}
}
