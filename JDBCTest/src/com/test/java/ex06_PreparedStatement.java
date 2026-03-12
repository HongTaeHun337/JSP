package com.test.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class ex06_PreparedStatement {

	public static void main(String[] args) {
		

		m1();
		
	}

	private static void m1() {

		
		//insert into tblAddress(seq, name, age, gender, tel, address, regdate)values (seqAddress.nextval, '홍길동', 20, 'm', '010-1234-5678', '서울시 강남구 대치동', default);
		
		String name = "꿀꿀이2";
		int age = 3;
		String gender = "m";
		String tel = "010-1234-5678";
		String address = "서울시 강남구 천호동 Dog's Home";
		
		address = address.replace("'","''");
		
		DBUtil util = new DBUtil();
		Connection conn = null;
		Statement stat = null;
		PreparedStatement pstat = null;


		try {
			
			conn = util.open();
			
			//1. Statment
//			stat = conn.createStatement();
//			
//			String sql = String.format("insert into tblAddress (seq, name, age, gender, tel, address, regdate) values (seqAddress.nextVal, '%s', %s, '%s', '%s', '%s', default)", name, age, gender, tel, address);
//			
//			System.out.println(sql);
//			
//			System.out.println(stat.executeUpdate(sql));
			
			//2. PreparedStatement
			//- 준비한 것? > SQL의 데이터(값)
			//- ?: 오라클의 매개변수 리터럴
			String sql = "insert into tblAddress (seq, name, age, gender, tel, address, regdate) values (seqAddress.nextVal, ?, ?, ?, ?, ?, default)";
			
			//인덱스에서 누락된 IN 또는 OUT 매개변수:: 1
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, name);
			pstat.setInt(2, age);
			pstat.setString(3, gender);
			pstat.setString(4, tel);
			pstat.setString(5, address);
			
			pstat.executeUpdate();
			
			//stat.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
}


/*
DBUtil util = new DBUtil();
Connection conn =null;
Statement stat = null;
ResultSet rs = null;


try {
	
	conn = util.open();
	stat = conn.createStatement();
	
	//SQL
	
	stat.close();
	conn.close();
	
} catch (Exception e) {
	e.printStackTrace();
}
*/