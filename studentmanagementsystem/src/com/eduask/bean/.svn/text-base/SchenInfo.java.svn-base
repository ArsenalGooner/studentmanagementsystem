package com.eduask.bean;

import java.util.Set;

/*Field	TypeComment
teaId		int(11) NULL
classId		int(11) NULL
subId		int(11) NULL*/
public class SchenInfo {
	//课程表（关系表）
	
	/**
	 * 班级 对 科目 一对多 
	 */
	private Set<SubInfo> subSet; 
	
	
	/**
	 * 科目对班级   多对一
	 *
	 *如果不查询一个班级有几个科目可能用不到
	*/
	/*
	private ClassInfo  classInfo;*/
	
	
	/**
	 * 老师(教师)对于班级   多对一 (一个班有好几个老师) 
	 */
	private ClassInfo classInfo;
	
	/**
	 * 班级对于老师(教师) 一对多 (一个老师教好几个班) 
	 * 如果不查询一个班级有几个老师可能用不到
	 */
	private Set<ClassInfo>  classSet;
	
	
	
	/**
	 * 老师(教师)对于科目   多对一；
	 */
	private SubInfo subInfo;
	
	/**
	 * 科目对于老师(教师)   一对多；
	 */
	private Set<TeaInfo> teaSet;

	public SchenInfo() {
		super();
	}

	public Set<SubInfo> getSubSet() {
		return subSet;
	}

	public void setSubSet(Set<SubInfo> subSet) {
		this.subSet = subSet;
	}

	public ClassInfo getClassInfo() {
		return classInfo;
	}

	public void setClassInfo(ClassInfo classInfo) {
		this.classInfo = classInfo;
	}

	public Set<ClassInfo> getClassSet() {
		return classSet;
	}

	public void setClassSet(Set<ClassInfo> classSet) {
		this.classSet = classSet;
	}

	public SubInfo getSubInfo() {
		return subInfo;
	}

	public void setSubInfo(SubInfo subInfo) {
		this.subInfo = subInfo;
	}

	public Set<TeaInfo> getTeaSet() {
		return teaSet;
	}

	public void setTeaSet(Set<TeaInfo> teaSet) {
		this.teaSet = teaSet;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
