<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>修改图书页面</title>
	<link rel="stylesheet" href="css/change_delete_book.css" id="change_delete_book">
</head>

<body>
	<center>
	<%if(request.getSession().getAttribute("username") != null) { %>
    <h2>
	请选择修改图书名的方式
       </h2>
	<form action="ChangeBookServlet" method="post">
    
					<div class="wen">
                                                 以编号方式修改：</div>
						<div>
	<input type="text" name="id" placeholder="您要修改的书的编号"/>
						</div>					
						<div>
	<input type="text" name="change" placeholder="您要修改后的书的书名"/>
							<input type="hidden" value="id" name="choice">
						</div>
                        <div>
						 <button type="submit" class="button">提交</button>
                         </div>
				</form>
				<form action="ChangeBookServlet" method="post" >
					<div class="wen">
						 以书名方式修改</div>
						<div >
							<input  placeholder="您要修改的书的书名" type="text" name="bookname" />
						</div>
					
					<div>
							<input  type="text" name="change" placeholder="您要修改后的书的书名"/>
							<input type="hidden" value="bookname" name="choice">
						</div>              
					<div>
						 <button type="submit" class="button">提交</button>					
					</div>                 
				</form>
                
				<div><a href="welcome.jsp" id="back" >返回菜单</a></div></br>
			
	<%} else {%>
	<h1>请登录后再访问此页面</h1>
	<a href="LoginOut"><i>返回登陆</i></a>
	<%} %>
	<div><font color="red" size="2"> ${msg }</font></div>
    
	</center>
</body>
</html>