package com.mycompany.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet6 extends HttpServlet {
	//요청방식에 상관없이 일관된 처리를 보여주기위해서는 Servlet에서 service를 재정의해주면 된다
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DispatcherServlet6 doGet실행");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		request.setAttribute("title", title);
		request.setAttribute("content", content);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/dispatcher6.jsp");
		rd.forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DispatcherServlet6 doPost실행");
		
		//request.setCharacterEncoding("UTF-8"); servlet에서 직접 한글처리
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		request.setAttribute("title", title);
		request.setAttribute("content", content);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/dispatcher6.jsp");
		rd.forward(request, response);
	}
}