<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.edu.nfu.model.Book" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>查找图书页面</title>
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">	
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<link rel="stylesheet" href="css/findbook.css" id="findbook">
</head>
<body>
	<center>
		<%if(request.getSession().getAttribute("username") != null) { %>
		<h2>请选择查找图书的方式</h2>
		<button id="idBT" >编号</button>
		<button id="booknameBT" >书名</button>
		<button id="authorBT" >作者</button>
		<button id="priceBT" >价格</button>
		<a id="back" href="welcome.jsp">返回菜单</a></br>
		<div id="idfind">
			<form action="" method="post">
			<table>			
				<tr><input type="text" name="id" placeholder="请输入您要查找的编号">
				<input type="hidden" value="id" name="choice">
				<th><input type="submit" value="提交" id="sub1"></th>
				<th><a href="FindBookServlet" id="back1">返回</br></a></th></tr>			
				</table>
			</form>
		</div>
		<div id="namefind">
			<form action="" method="post">
			<table>
				<tr><input type="text" name="bookname" placeholder="请输入您要查找的书名">
				<input type="hidden" value="bookname" name="choice">
				<th><input type="submit" value="提交" id="sub2"></th>
				<th><a href="FindBookServlet" id="back2">返回</br></a></th></tr>
				</table>
			</form>
		</div>
		<div id="authorfind">
			<form action="" method="post">
			<table>
				<tr><input type="text" name="author" placeholder="请输入您要查找的作者">
				<input type="hidden" value="author" name="choice">
				<th><input type="submit" value="提交" id="sub3"></th>
				<th><a href="FindBookServlet" id="back3">返回</br></a></th></tr>
				</table>
			</form>
		</div>
		<div id="pricefind">
			<form action="" method="post">
			<table>
				<tr><input type="text" name="minprice" placeholder="请输入您要查找的最低价格"></br></tr>
				<tr><input type="text" name="maxprice" placeholder="请输入您要查找的最高价格">
				<input type="hidden" value="price" name="choice">
				<th><input type="submit" value="提交" id="sub4"></th>
				<th><a href="FindBookServlet" id="back4">返回</br></a></th></tr>
				</table>
			</form>
		</div>
		<div id="show">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<table class="table">
							<thead border="1px">
								<tr>
									<th>
										编号
									</th>
									<th>
										书名
									</th>
									<th>
										作者
									</th>
									<th>
										价格
									</th>
									<th>
										预览
									</th>
									<th>
										下载
									</th>
								</tr>
							</thead>
							<tbody>
								<%ArrayList<Book> booklist = (ArrayList<Book>)request.getAttribute("booklist"); %>
								<% for(Book book:booklist){ %>
								<tr class="success">
									<td>
										<%=book.getBookid() %>
									</td>
									<td>
										<%=book.getBookname() %>
									</td>
									<td>
										<%=book.getAuthor() %>
									</td>
									<td>
										<%=book.getPrice() %>
									</td>
									<td>
										<button class="yulan">预览</button>
									</td>
									<td>
										<button class="xiazai">下载</button>
									</td>
								</tr>
								<%} %>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<%} else {%>
		<h1>请登录后再访问此页面</h1>
		<a href="LoginOut"><i>返回登陆</i></a>
		<%} %>
		<font color="red" size="2"> ${msg }</font>
	</center>
	<script src="js/findbook.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>