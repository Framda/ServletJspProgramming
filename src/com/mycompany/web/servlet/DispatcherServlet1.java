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
	//init -> Servlet���� �ʱ�ȭ�� ����ϴ� �޼ҵ� (�����ڷ� �ʱ�ȭ���� ����)
	//Servlet�� ��ü�� ���������ʰ� �ڽ��� ������ ������
	//Servlet�� ��ü�� ����(�����غ�)�� ��� ��ģ �ڿ��� �� ���ִ� �۾����� ������ �����ڴ� ��ü�� ���������� ����Ǿ�
	//�۾��� ���ϴ� ��찡 �ֱ⶧���� init�޼ҵ带 ���� ��ü �������� �� �ѹ� �������ش�.(�����ڿ� ���� but������� �ٸ�)
	//@Override
	//public void init(ServletConfig config) throws ServletException {
	//	System.out.println("init(ServletConfig config) run...");
	//	x = config.getInitParameter("x");
	//	y = config.getInitParameter("y");
	//	System.out.println("���޹��� X ��: "+ x);
	//	System.out.println("���޹��� Y ��: "+ y);
	//}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("DispatcherServle1t service run...");
	}
}
