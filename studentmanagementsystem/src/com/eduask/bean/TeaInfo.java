package com.eduask.bean;

public class TeaInfo {

	

	private Integer teaId;
	private Integer teaNum;
	private String teaPass;
	private String teaName;
	private String teaSex;
	private String teaOri;
	private String teaNat;
	private Integer teaAge;
	private String teaPhone;
	private String teaEdu;
	private Integer subId;
	private Integer roleId;
	
	/**
	 * 老师对科目 多对一
	 */
	private SubInfo subInfo;
	/**
	 * 老师对角色 多对一
	 */
	private RoleInfo roleInfo;
	
	private Integer teaState;
	/**
	 * 老师(教师)对于班级   多对一 (一个班有好几个老师) 
	 */
	private ClassInfo classInfo;
	
	

	public TeaInfo() {

	}
	public TeaInfo(String str) {
		teaName = str;
		teaOri = str;
	}


	public TeaInfo(Integer teaId, Integer teaNum, String teaPass,
			String teaName, String teaSex, String teaOri, String teaNat,
			Integer teaAge, String teaPhone, String teaEdu, SubInfo subInfo,
			RoleInfo roleInfo, Integer teaState, ClassInfo classInfo) {
		super();
		this.teaId = teaId;
		this.teaNum = teaNum;
		this.teaPass = teaPass;
		this.teaName = teaName;
		this.teaSex = teaSex;
		this.teaOri = teaOri;
		this.teaNat = teaNat;
		this.teaAge = teaAge;
		this.teaPhone = teaPhone;
		this.teaEdu = teaEdu;
		this.subInfo = subInfo;
		this.roleInfo = roleInfo;
		this.teaState = teaState;
		this.classInfo = classInfo;
	}



	public Integer getTeaId() {
		return teaId;
	}



	public void setTeaId(Integer teaId) {
		this.teaId = teaId;
	}



	public Integer getTeaNum() {
		return teaNum;
	}



	public void setTeaNum(Integer teaNum) {
		this.teaNum = teaNum;
	}



	public String getTeaPass() {
		return teaPass;
	}



	public void setTeaPass(String teaPass) {
		this.teaPass = teaPass;
	}



	public String getTeaName() {
		return teaName;
	}



	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}



	public String getTeaSex() {
		return teaSex;
	}



	public void setTeaSex(String teaSex) {
		this.teaSex = teaSex;
	}



	public String getTeaOri() {
		return teaOri;
	}



	public void setTeaOri(String teaOri) {
		this.teaOri = teaOri;
	}



	public String getTeaNat() {
		return teaNat;
	}



	public void setTeaNat(String teaNat) {
		this.teaNat = teaNat;
	}



	public Integer getTeaAge() {
		return teaAge;
	}



	public void setTeaAge(Integer teaAge) {
		this.teaAge = teaAge;
	}



	public String getTeaPhone() {
		return teaPhone;
	}



	public void setTeaPhone(String teaPhone) {
		this.teaPhone = teaPhone;
	}



	public String getTeaEdu() {
		return teaEdu;
	}



	public void setTeaEdu(String teaEdu) {
		this.teaEdu = teaEdu;
	}



	public SubInfo getSubInfo() {
		return subInfo;
	}



	public void setSubInfo(SubInfo subInfo) {
		this.subInfo = subInfo;
	}



	public RoleInfo getRoleInfo() {
		return roleInfo;
	}



	public void setRoleInfo(RoleInfo roleInfo) {
		this.roleInfo = roleInfo;
	}



	public Integer getTeaState() {
		return teaState;
	}



	public void setTeaState(Integer teaState) {
		this.teaState = teaState;
	}



	public ClassInfo getClassInfo() {
		return classInfo;
	}



	public void setClassInfo(ClassInfo classInfo) {
		this.classInfo = classInfo;
	}



	public Integer getSubId() {
		return subId;
	}



	public void setSubId(Integer subId) {
		this.subId = subId;
	}



	public Integer getRoleId() {
		return roleId;
	}



	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	
	
	
}
