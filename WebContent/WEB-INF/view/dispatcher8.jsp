<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.mycompany.web.dto.Counter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Dispatcher8.jsp</h4>
	<%--DispatcherServlet8에서 받은 parameter value를 dispatcher8.jsp여기서 사용하기--%>
	<%--How1--%>
	<%Counter applicationCounter = (Counter) application.getAttribute("applicationCounter"); %>
	aplicationCounter: <%=applicationCounter.getValue()%> <br><br>
	
	<%Counter sessionCounter = (Counter) session.getAttribute("sessionCounter"); %>
	sessionCounter: <%=sessionCounter.getValue()%><br><br>
	
	<%Counter requestCounter = (Counter) request.getAttribute("requestCounter"); %>
	requestCounter: <%=requestCounter.getValue() %><br><br><br>
	
	<%--How2 Expression Language--%>
	<%--getter를 실행하고 호출하는 방법 EL.--%>
	aplicationCounter: ${applicationCounter.value}<br><br>
	sessionCounter: ${sessionCounter.value}<br><br>
	requestCounter: ${requestCounter.value}
</body>
</html>