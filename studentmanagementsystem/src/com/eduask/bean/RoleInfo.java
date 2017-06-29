package com.eduask.bean;

public class RoleInfo {

	private Integer roleId;
	private String roleName;

	public RoleInfo() {

	}

	public RoleInfo(Integer roleId, String roleName) {

		this.roleId = roleId;
		this.roleName = roleName;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

}
