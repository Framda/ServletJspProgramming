package com.mycompany.web.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet1 extends HttpServlet {
	private String x;
	private String y;
	//init -> Servlet에서 초기화를 담당하는 메소드 (생성자로 초기화하지 않음)
	//Servlet은 객체만 생성하지않고 자신의 역할을 수집함
	//Servlet은 객체를 생성(실행준비)를 모두 마친 뒤에야 할 수있는 작업들이 많은데 생성자는 객체의 생성시점에 실행되어
	//작업을 못하는 경우가 있기때문에 init메소드를 통해 객체 생성이후 단 한번 실행해준다.(생성자와 동일 but실행시점 다름)
	//@Override
	//public void init(ServletConfig config) throws ServletException {
	//	System.out.println("init(ServletConfig config) run...");
	//	x = config.getInitParameter("x");
	//	y = config.getInitParameter("y");
	//	System.out.println("전달받은 X 값: "+ x);
	//	System.out.println("전달받은 Y 값: "+ y);
	//}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("DispatcherServle1t service run...");
	}
}
