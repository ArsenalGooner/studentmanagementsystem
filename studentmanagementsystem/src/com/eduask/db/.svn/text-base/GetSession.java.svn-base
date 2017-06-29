package com.eduask.db;

import java.io.InputStream;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class GetSession {
	public static SqlSession getSession(){
		InputStream is=GetSession.class.getClassLoader().getResourceAsStream("config.xml");
	    SqlSessionFactory ssf=new SqlSessionFactoryBuilder().build(is);
	    SqlSession session=ssf.openSession();
		return session;
	}

}
