package com.test.java;

import java.sql.Connection;

public class ex03_Connection {

	
	public static void main(String[] args) {
		
		//ex03_Connection
		DBUtil util = new DBUtil();
		Connection conn = null;
		
		try {
			
			//conn = util.open();
			conn = util.open("localhost", "hr", "java1234");
			
			System.out.println(conn.isClosed());
			
			conn.close();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}
}
