package com.eduask.biz;

import java.util.List;

import com.eduask.bean.TeaInfo;

public interface TeaBiz {
	public List<TeaInfo> findAll();

	public TeaInfo findById(int teaId);

	public void add(TeaInfo ti);

	public void update(TeaInfo ti);

	public void delete(int teaId);

	public List<TeaInfo> search(TeaInfo ti);
}
