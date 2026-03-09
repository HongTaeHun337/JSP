package com.test.java;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//1. 서블릿 클래스 선언
public class Ex01 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		PrintWriter writer = response.getWriter();
		
		Calendar now = Calendar.getInstance();
		
		writer.println("<html>");
		writer.println("<body>");
		writer.println("<h1>Servlet</h1>");
		writer.printf("<p>%tF %tT</p>", now, now);
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close(); //문서 완성 > 브라우저에게 전달
		
	}

}
