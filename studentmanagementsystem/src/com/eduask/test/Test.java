package com.eduask.test;

import java.util.List;
import java.util.Set;

import com.eduask.bean.ScoInfo;
import com.eduask.bean.StuInfo;
import com.eduask.biz.scoBiz;
import com.eduask.biz.impl.ScoBizImpl;
import com.eduask.biz.impl.StuBizImpl;

public class Test {
	
	public static void main(String[] args) {
		scoBiz sb=new ScoBizImpl();
		/*Set<ScoInfo> set=sb.findAll();
		
		System.out.println(set.size());*/
		/*ScoInfo si=new ScoInfo();
		si.setScoId(800);
		si.setScoVal(50);
		sb.addSco(si);*/
		
		StuBizImpl sbi = new StuBizImpl();
		List<StuInfo> list = sbi.findAll();
		System.out.println(list.size());
	}
}
