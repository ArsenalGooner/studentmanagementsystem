package com.eduask.bean;

import java.util.Set;

public class SubInfo {

	private Integer subId;
	private String subName;
	/**
	 * 科目对班级   多对一
	 */
	private ClassInfo  classInfo;
	
	/**
	 * 科目对于老师(教师)   一对多；
	 */
	private Set<TeaInfo> teaSet;

	public SubInfo() {

	}

	public SubInfo(Integer subId, String subName, ClassInfo classInfo,
			Set<TeaInfo> teaSet) {
		
		this.subId = subId;
		this.subName = subName;
		this.classInfo = classInfo;
		this.teaSet = teaSet;
	}

	public Integer getSubId() {
		return subId;
	}

	public void setSubId(Integer subId) {
		this.subId = subId;
	}

	public String getSubName() {
		return subName;
	}

	public void setSubName(String subName) {
		this.subName = subName;
	}

	public ClassInfo getClassInfo() {
		return classInfo;
	}

	public void setClassInfo(ClassInfo classInfo) {
		this.classInfo = classInfo;
	}

	public Set<TeaInfo> getTeaSet() {
		return teaSet;
	}

	public void setTeaSet(Set<TeaInfo> teaSet) {
		this.teaSet = teaSet;
	}

	

}
