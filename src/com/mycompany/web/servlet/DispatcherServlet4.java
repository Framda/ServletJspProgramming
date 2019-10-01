package com.mycompany.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet4 extends HttpServlet {
	//요청방식에 상관없이 일관된 처리를 보여주기위해서는 Servlet에서 service를 재정의해주면 된다
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//페이지의 응답내용을 전달하는 방법 1
		
		//response.setContentType("text/html;charset=UTF-8");
		//PrintWriter out = response.getWriter();
		//out.println("<!DOCTYPE html>");
		//out.println("<html>");
		//out.println("	<head>");
		//out.println("	</head>");
		//out.println("	<body>");
		//out.println("		<h4>DispatcherServlet4</h4>");
		//out.println("		response content");
		//out.println("	</body>");
		//out.println("</html>");
		
		//페이지의 응답 내용을 전달하는 방법 2
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/dispatcher4.jsp");
		rd.forward(request, response);
	}
}
