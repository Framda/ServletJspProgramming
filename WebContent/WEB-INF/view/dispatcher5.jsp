<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Dispatcher5.jsp</h4>
	response content
	<%--DispatcherServlet5에서 받은 parameter value를 dispatcher5.jsp여기서 사용하기--%>
	<%--How1--%>
	<%--name: <%=request.getAttribute("name")%> <br>
	age: <%=request.getAttribute("age")%><br>--%>
	
	name: <%=application.getAttribute("name")%> <br>
	age: <%=application.getAttribute("age")%><br>
	
	<%--How2 Expression Language--%>
	name: ${name} <br>
	age: ${age} <br>
</body>
</html>