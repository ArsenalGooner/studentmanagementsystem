package com.eduask.bean;

import java.util.Set;

public class ClassInfo {
	
	
	private Integer classId;
	private String className;
	/**
	 * 班级对年级 多对一
	 */
	private GraInfo graInfo;
		
		/**
		 * 班级对班主任 一对一
		 */
	private TeaInfo teainfo;
	
	/**
	 * 班级对学生 一对多
	 */
	private Set<StuInfo> stuSet;
	/**
	 * 班级 对 科目 一对多 
	 */
	private Set<SubInfo> subSet; 
	/**
	 * 班级对于老师(教师) 一对多 (一个老师教好几个班) 
	 * 如果不查询一个班级有几个老师可能用不到
	 */
	private Set<ClassInfo>  classSet;
	

	public ClassInfo() {
			
	}


	public ClassInfo(Integer classId, String className, GraInfo graInfo,
			TeaInfo teainfo, Set<StuInfo> stuSet, Set<SubInfo> subSet,
			Set<ClassInfo> classSet) {
		super();
		this.classId = classId;
		this.className = className;
		this.graInfo = graInfo;
		this.teainfo = teainfo;
		this.stuSet = stuSet;
		this.subSet = subSet;
		this.classSet = classSet;
	}


	public Integer getClassId() {
		return classId;
	}


	public void setClassId(Integer classId) {
		this.classId = classId;
	}


	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}


	public GraInfo getGraInfo() {
		return graInfo;
	}


	public void setGraInfo(GraInfo graInfo) {
		this.graInfo = graInfo;
	}


	public TeaInfo getTeainfo() {
		return teainfo;
	}


	public void setTeainfo(TeaInfo teainfo) {
		this.teainfo = teainfo;
	}


	public Set<StuInfo> getStuSet() {
		return stuSet;
	}


	public void setStuSet(Set<StuInfo> stuSet) {
		this.stuSet = stuSet;
	}


	public Set<SubInfo> getSubSet() {
		return subSet;
	}


	public void setSubSet(Set<SubInfo> subSet) {
		this.subSet = subSet;
	}


	public Set<ClassInfo> getClassSet() {
		return classSet;
	}


	public void setClassSet(Set<ClassInfo> classSet) {
		this.classSet = classSet;
	}
	

	
	
	

}
