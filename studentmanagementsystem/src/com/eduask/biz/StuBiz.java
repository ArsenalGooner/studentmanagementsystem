package com.eduask.biz;

import java.util.List;

import com.eduask.bean.StuInfo;

public interface StuBiz {
	public List<StuInfo> findAll();

	public StuInfo findById(int sno);

	public List<StuInfo> findBy(String str);

	public void add(StuInfo si);

	public void update(StuInfo si);

	public void delete(int sno);
	
	public List<StuInfo> search(StuInfo si);

}
