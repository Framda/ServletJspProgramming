<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Dispatcher6.jsp</h4>
	<%--DispatcherServlet6에서 받은 parameter value를 dispatcher6.jsp여기서 사용하기--%>
	<%--How1--%>
	title: <%=request.getAttribute("title")%> <br>
	content: <%=request.getAttribute("content")%><br>
	<%--How2 Expression Language--%>
	title: ${title} <br>
	content: ${content} <br>
</body>
</html>