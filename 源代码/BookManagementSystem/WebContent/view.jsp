<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>预览页面</title>
</head>
<!-- 此预览功能待实现，因此此页面暂无作用！ -->
<body>

	<center>
	<%if(request.getSession().getAttribute("username") != null) { %>
	${text }</br>
	<a href="FindBookServlet">返回</a></br>
	<%} else {%>
	<h1>请登录后再访问此页面</h1>
	<a href="LoginOut"><i>返回登陆</i></a>
	<%} %>
	</center>
</body>
</html>