package com.test.todo;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.todo.model.TodoDAO;
import com.test.todo.model.TodoDTO;

@WebServlet(value = "/main.do")
public class Main extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//Main.java
		// ctrl + shift + o 한번에 import
		//1. DB 작업 > DAO 위임 > select
		//2. 결과셋
		//3. JSP 호출(+결과셋)
		
		//1.
		TodoDAO dao = new TodoDAO();
		
		//ResultSet > JDBC 코드
		//ResultSet rs = dao.list();
		
		//ResultSet(테이블) > (자료 구조 변환: 자료형 매핑) > ArrayList<자료구조>
		ArrayList<TodoDTO> list = dao.list();
		
		req.setAttribute("list", list);
		
		//System.out.println(list);

		req.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(req, resp);

	}

}

