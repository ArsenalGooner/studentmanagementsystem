package com.eduask.biz.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eduask.bean.StuInfo;
import com.eduask.biz.StuBiz;
import com.eduask.db.GetSession;
import com.eduask.mapper.StuMapper;

public class StuBizImpl implements StuBiz {
	private SqlSession session = GetSession.getSession();
    private StuMapper sm = session.getMapper(StuMapper.class);
	@Override
	public List<StuInfo> findAll() {
		return sm.findAll();
	}
	@Override
	public StuInfo findById(int stuId) {
		return sm.findById(stuId);
	}

	@Override
	public List<StuInfo> findBy(String str) {
		return sm.findBy(str);
	}

	@Override
	public void add(StuInfo si) {
		sm.add(si);
		session.commit();
	}

	@Override
	public void update(StuInfo si) {
		sm.update(si);
		session.commit();
	}

	@Override
	public void delete(int stuId) {
		sm.delete(stuId);
		session.commit();
	}
	@Override
	public List<StuInfo> search(StuInfo si) {
		// TODO Auto-generated method stub
		return sm.search(si);
	}
	
}
