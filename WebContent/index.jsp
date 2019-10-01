<%@ page contentType="text/html;charset=UTF-8"%>
<%--<%request.setCharacterEncoding("UTF-8"); %>--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>

<style>
	a {
		color: blue;
	}
	* {
		color: #000;
		text-decoration: none;
        margin: 0;
	}
    li {
        font-size: 18px;
        margin-top: 8px;
    }
	body {
		background-color: rgba(0, 0, 0, .03);
		margin: 0;
		width: 100%;
        font-family: 'Big Shoulders Display', cursive;
        font-size: 24px;
	}
	#wrap {
		width: 100%;
		height: 100vh;
		display: flex;
		flex-direction: column;
	}
	#header {
		text-align: center;
		border-bottom: 1px solid #000;
		height: 70px;
        line-height: 70px;
        background-color: rgba(0, 0, 0, 0.05);
	}
	#content {
		display: flex;
		flex-grow: 1;
		min-height: 0;
	}
	#sideBar {
		overflow-y: scroll;
		width: 300px;
		border-right: 1px solid #000;
        background-color: rgba(0, 0, 0, 0.15);
	}
	#center {
		flex-grow: 1;
		background-color: rgba(0, 0, 0, .05);
	}
	#center iframe {
		margin: 0;
		width: 100%;
		height: 100%;
		padding: 0;
		margin: 0;
		border: none;
	}
	#footer {
		border-top: 1px solid #000;
		height: 50px;
		line-height: 50px;
		text-align: center;
		font-size: 12px;
		color: #999;
        background-color: rgba(0, 0, 0, 0.05);
	}
	#footer a {
		color: deepskyblue;
	}
</style>
<link href="https://fonts.googleapis.com/css?family=Big+Shoulders+Display:100,300,400,500,600,700,800&display=swap" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<div id="header"><h3><a href="index.jsp">Servlet Jsp Programming</a></h3></div>
	<div id="content">
		<div id="sideBar">
			<ol>
				<li><a href="dispatcher1" target="iframe">create Servlet, URL mapping</a></li>
				<li><a href="dispatcher2" target="iframe">Servlet clear</a></li>
				<li><a href="dispatcher3?name=hongkildong&age=20&tel=01012341234" target="iframe">GET formula request</a></li><!--default값 -> get-->
				<li>
					<form action="dispatcher3" method="get" target="iframe">
						<input type="text" name="name" value="hongkildong">
						<input type="number" name="age" value="20">
						<input type="tel" name="tel" value="01012341234"> <br>
						<input type="submit" value="GET 방식으로 요청">
					</form>
				</li>
				<li>
					<form action="dispatcher3" method="post" target="iframe">
						<input type="text" name="name" value="hongkildong">
						<input type="number" name="age" value="20">
						<input type="tel" name="tel" value="01012341234"> <br>
						<input type="submit" value="POST 방식으로 요청">
					</form>
				</li>
				<li><a href="dispatcher4" target="iframe">sand Response</a></li>
				<li><a href="dispatcher5?name=hongkildong&age=20" target="iframe">get request parameter</a></li>
				<p>Request parameter response </p>
				<li>
					<form action="dispatcher5" method="get" target="iframe">
						<input type="text" name="name" value="hongkildong">
						<input type="number" name="age" value="20"><br>
						<input type="submit" value="GET 방식으로 요청">
					</form>
				</li>
				<li>
					<form action="dispatcher5" method="post" target="iframe">
						<input type="text" name="name" value="hongkildong">
						<input type="number" name="age" value="20"><br>
						<input type="submit" value="POST 방식으로 요청">
					</form>
				</li>
				<p>language confirm</p> 
				<li>
					<form action="dispatcher6" method="get" target="iframe">
						<input type="text" name="title">
						<input type="text" name="content"><br>
						<input type="submit" value="GET 방식으로 요청">
					</form>
				</li>
				<li>
					<form action="dispatcher6" method="post" target="iframe">
						<input type="text" name="title">
						<input type="text" name="content"><br>
						<input type="submit" value="POST 방식으로 요청">
					</form>
				</li>
				<li>
					<p>Object Use Scope</p>
					<a href="dispatcher7" target="iframe">Save Object</a> <br>
					<a href="dispatcher8" target="iframe">Get Object</a> <br>
				</li>
			</ol>
		</div>
		<div id="center">
			<iframe name="iframe" src="http://tomcat.apache.org"></iframe>
		</div>
	</div>
	<div id="footer">&copy;copyright 2019 . <a href="https://github.com/Framda" target="_blank">Framda</a> </div>
</div>
</body>
</html>