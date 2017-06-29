package com.eduask.bean;

/*FieldTypeComment
 scoId	int(11) NOT NULL
 stuId	int(11) NULL
 subId	int(11) NULL
 classId	int(11) NULL
 scoVal	int(11) NULL*/
public class ScoInfo {

	private Integer scoId;
	/**
	 * 成绩对学生 多对一
	 */
	private StuInfo stuInfo;
	/**
	 * 成绩对科目 多对一
	 */
	private SubInfo subInfo;
	/**
	 * 成绩对班级 多对一
	 */
	private ClassInfo classInfo;

	private Integer scoVal;

	public ScoInfo() {

	}

	public ScoInfo(Integer scoId, StuInfo stuInfo, SubInfo subInfo,
			ClassInfo classInfo, Integer scoVal) {

		this.scoId = scoId;
		this.stuInfo = stuInfo;
		this.subInfo = subInfo;
		this.classInfo = classInfo;
		this.scoVal = scoVal;
	}

	public Integer getScoId() {
		return scoId;
	}

	public void setScoId(Integer scoId) {
		this.scoId = scoId;
	}

	public StuInfo getStuInfo() {
		return stuInfo;
	}

	public void setStuInfo(StuInfo stuInfo) {
		this.stuInfo = stuInfo;
	}

	public SubInfo getSubInfo() {
		return subInfo;
	}

	public void setSubInfo(SubInfo subInfo) {
		this.subInfo = subInfo;
	}

	public ClassInfo getClassInfo() {
		return classInfo;
	}

	public void setClassInfo(ClassInfo classInfo) {
		this.classInfo = classInfo;
	}

	public Integer getScoVal() {
		return scoVal;
	}

	public void setScoVal(Integer scoVal) {
		this.scoVal = scoVal;
	}

}
