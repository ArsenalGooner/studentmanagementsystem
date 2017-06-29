package com.eduask.bean;

import java.util.Set;

public class GraInfo {

	private Integer graId;
	private String graName;
	
	
	/**
	 * 年级对班级  一对多关系
	 */
	private Set<ClassInfo> classSet;
	
	public GraInfo() {

	}
	public GraInfo(Integer graId, String graName, Set<ClassInfo> classSet) {
		
		this.graId = graId;
		this.graName = graName;
		this.classSet = classSet;
	}
	public Integer getGraId() {
		return graId;
	}
	public void setGraId(Integer graId) {
		this.graId = graId;
	}
	public String getGraName() {
		return graName;
	}
	public void setGraName(String graName) {
		this.graName = graName;
	}
	public Set<ClassInfo> getClassSet() {
		return classSet;
	}
	public void setClassSet(Set<ClassInfo> classSet) {
		this.classSet = classSet;
	}
	
	

	
}
