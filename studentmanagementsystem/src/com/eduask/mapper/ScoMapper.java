package com.eduask.mapper;

import java.util.Set;

import com.eduask.bean.ScoInfo;



public interface ScoMapper {
	/**
	 * 实现成绩所有信息的全部查询
	 * @return
	 */
	public Set<ScoInfo> findAll();
	
	/**
	 * 实现成绩的增加
	 * @return
	 */
	//public void addSco(ScoInfo si);
}
