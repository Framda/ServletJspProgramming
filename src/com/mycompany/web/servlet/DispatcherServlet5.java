package com.mycompany.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet5 extends HttpServlet {
	//요청방식에 상관없이 일관된 처리를 보여주기위해서는 Servlet에서 service를 재정의해주면 된다
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		int intAge = Integer.parseInt(age);
		
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		
		//servletContext 객체를 생성하기
//		ServletContext servletContext = request.getServletContext();
//		servletContext.setAttribute("name", name);
//		servletContext.setAttribute("age", age);
		
		
		System.out.println("name: " + name);
		System.out.println("age: " + age);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/dispatcher5.jsp");
		rd.forward(request, response);
	}
}
