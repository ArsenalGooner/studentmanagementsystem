package com.eduask.biz.impl;

import java.util.Set;

import org.apache.ibatis.session.SqlSession;


import com.eduask.bean.ScoInfo;
import com.eduask.biz.scoBiz;
import com.eduask.db.GetSession;
import com.eduask.mapper.ScoMapper;



public class ScoBizImpl implements scoBiz{
	SqlSession session=GetSession.getSession();
	ScoMapper sm=session.getMapper(ScoMapper.class);
	
	/**
	 * 实现成绩所有信息的全部查询
	 * @return
	 */
	@Override
	public Set<ScoInfo> findAll() {
	
		return sm.findAll();
	}
	/**
	 * 实现成绩的增加
	 * @return
	 */
	/*@Override
	public void addSco(ScoInfo si) {
		sm.addSco(si);
		
	}*/
	
}
