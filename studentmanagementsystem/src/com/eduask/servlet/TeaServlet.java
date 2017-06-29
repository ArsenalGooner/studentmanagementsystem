package com.eduask.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eduask.bean.TeaInfo;
import com.eduask.biz.impl.TeaBizImpl;

@SuppressWarnings("serial")
public class TeaServlet extends HttpServlet {
	private TeaBizImpl tbi = new TeaBizImpl();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		String method = request.getParameter("method");
		System.out.println(method);
		if("findAll".equals(method)){
			findAll(request,response);
		}else if("add".equals(method)){
			add(request,response);
		}else if("findById".equals(method)){
			findById(request,response);
		}else if("update".equals(method)){
			update(request,response);
		}else if("delete".equals(method)){
			delete(request,response);
		}else if("search".equals(method)){
			search(request,response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
	public void findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("TEAINFO", tbi.findAll());
		request.getRequestDispatcher("teaFindAll.jsp").forward(request, response);
	}
	public void findById(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int teaId = Integer.parseInt(request.getParameter("teaId"));
		request.setAttribute("TEAINFO", tbi.findById(teaId));
		request.getRequestDispatcher("teaUpdate.jsp").forward(request, response);
	}
	public void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TeaInfo ti =new TeaInfo();
		ti.setTeaNum(Integer.parseInt(request.getParameter("teaNum")));
		ti.setTeaPass(request.getParameter("teaPass"));
		ti.setTeaName(request.getParameter("teaName"));
		ti.setTeaSex(request.getParameter("teaSex"));
		ti.setTeaOri(request.getParameter("teaOri"));
		ti.setTeaNat(request.getParameter("teaNat"));
		ti.setTeaAge(Integer.parseInt(request.getParameter("teaAge")));
		ti.setTeaPhone(request.getParameter("teaPhone"));
		ti.setTeaEdu(request.getParameter("teaEdu"));
		ti.setSubId(Integer.parseInt(request.getParameter("subId")));
		ti.setRoleId(Integer.parseInt(request.getParameter("roleId")));
		tbi.add(ti);
		request.getRequestDispatcher("teaFindAll.jsp").forward(request,response);
	}
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TeaInfo ti =new TeaInfo();
		ti.setTeaNum(Integer.parseInt(request.getParameter("teaNum")));
		ti.setTeaPass(request.getParameter("teaPass"));
		ti.setTeaName(request.getParameter("teaName"));
		ti.setTeaSex(request.getParameter("teaSex"));
		ti.setTeaOri(request.getParameter("teaOri"));
		ti.setTeaNat(request.getParameter("teaNat"));
		ti.setTeaAge(Integer.parseInt(request.getParameter("teaAge")));
		ti.setTeaPhone(request.getParameter("teaPhone"));
		ti.setTeaEdu(request.getParameter("teaEdu"));
		ti.setSubId(Integer.parseInt(request.getParameter("subId")));
		ti.setRoleId(Integer.parseInt(request.getParameter("roleId")));
		tbi.update(ti);
		request.getRequestDispatcher("teaFindAll.jsp").forward(request,response);
	}
	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int teaId = Integer.parseInt(request.getParameter("teaId"));
		tbi.delete(teaId);
		request.getRequestDispatcher("teaFindAll.jsp").forward(request,response);
	}
	public void search(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String str = request.getParameter("str");
		TeaInfo si = new TeaInfo(str);
		List<TeaInfo> list = tbi.search(si);
		for (TeaInfo t : list) {
			String name = t.getTeaName();
			name = name.replace(str, "<font color='red'>"+str+"</font>");
			String ori = t.getTeaOri();
			ori = ori.replace(str, "<font color='red'>"+str+"</font>");
			t.setTeaName(name);
			t.setTeaOri(ori);
		}
		request.setAttribute("TEAINFO",list);
		request.getRequestDispatcher("teaFindAll.jsp").forward(request,
				response);
	}
}
