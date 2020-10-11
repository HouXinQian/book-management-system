<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>增加图书页面</title>
	<link rel="stylesheet" href="css/addbook.css" id="addbook">
</head>

<body>
<center>
	<%if(request.getSession().getAttribute("username") != null) { %>
	<h2>
	请添加图书
       </h2>
	<form action="AddBookServlet" method="post" enctype="multipart/form-data">
		<div>
		<input type="text" name="bookname" placeholder="请输入书名"></div>		
		<div>
		<input type="text" name="author" placeholder="请输入作者"></div>	
		<div>
		<input type="text" name="price" placeholder="请输入价格"></div>	
        <div>
        <a href="javascript:;" class="a-upload">点击这里上传文件（.txt文件）
        <input type="file" name="file" id="file">
        </a></div>        
		<div>	
		<input type="submit" value="增加图书" id="addbook">
		</div> 	     
        <div>       
		<a href="welcome.jsp" id="back">返回菜单</a></div></br>
		</form>
    
		<font color="red" size="2"> ${msg }</font>
	<%} else {%>
	<h1>请登录后再访问此页面</h1>
	<a href="LoginOut"><i>返回登陆</i></a>
	<%} %>
</center>

</body>
</html>