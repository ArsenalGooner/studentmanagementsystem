package com.eduask.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.jdbc.Driver;

public class DBManager {
	public static Connection getConnection(){
		try {
			Class.forName(Driver.class.getName());
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		Connection conn=null;
		try {
			conn=DriverManager.getConnection
					//数据库调用的葛新宇 ip地址为：10.0.0.66
					("jdbc:mysql://10.0.0.66:3306/test","root","eduask");
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}		
		return conn;
	}
	public static void close(Connection conn,PreparedStatement ps,ResultSet rs){
		try {
			rs.close();
			ps.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	public static void close(Connection conn,PreparedStatement ps){
		try {
			ps.close();
			conn.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}		
	}
}
