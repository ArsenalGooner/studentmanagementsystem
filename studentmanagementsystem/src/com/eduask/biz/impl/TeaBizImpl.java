package com.eduask.biz.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eduask.bean.TeaInfo;
import com.eduask.biz.TeaBiz;
import com.eduask.db.GetSession;
import com.eduask.mapper.TeaMapper;

public class TeaBizImpl implements TeaBiz {
	private SqlSession session = GetSession.getSession();
	private TeaMapper tm = session.getMapper(TeaMapper.class);
	@Override
	public List<TeaInfo> findAll() {
		return tm.findAll();
	}

	@Override
	public TeaInfo findById(int teaId) {
		return tm.findById(teaId);
	}

	@Override
	public void add(TeaInfo ti) {
		tm.add(ti);
		session.commit();
	}

	@Override
	public void update(TeaInfo ti) {
		tm.update(ti);
		System.out.println("1");
		session.commit();
	}

	@Override
	public void delete(int teaId) {
		tm.delete(teaId);
		session.commit();
	}

	@Override
	public List<TeaInfo> search(TeaInfo ti) {
		// TODO Auto-generated method stub
		return tm.search(ti);
	}

}
