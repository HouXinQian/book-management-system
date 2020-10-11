<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <meta charset="utf-8">
    <title>登陆页面</title>
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
  </head>
  <%--验证码刷新--%>
  <script type="text/javascript">  
      function change(){  
          var img =document.getElementById("verify");  
          img.src="VerifyCodeServlet?a="+new Date().getTime();  
      }  
  </script> 
  <body>
    <div class="page login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
          
           <!-- 左边 -->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                    <h1>欢迎登录</h1>
                  </div>
                  <p>图书管理系统</p>
                </div>
              </div>
            </div>
            
             <!-- 右边 -->
            <div class="col-lg-6 bg-white">
              <div class="form d-flex align-items-center">
                <div class="content">
                
                  <form method="post" action="LoginServlet" class="form-validate" id="loginFrom">
                  
                    <div class="form-group">
                      <input id="login-username" type="text" name="username" value="${username }" required data-msg="请输入用户名" placeholder="用户名"  class="input-material">
                    </div>
                    
                    <div class="form-group">
                      <input id="login-password" type="password" name="password" required data-msg="请输入密码" placeholder="密码" class="input-material">
                    
                    
                    <div class="form-group">                
                    <input type = "text" name="verifycode" placeholder="验证码" class="input-material">
                    <a href="javascript:change()">
                        <img src="VerifyCodeServlet" id="verify">
                        </div>
                    <button id="login" type="submit" class="btn btn-primary">登录</button>
                    <font color="red" size="2"> ${msg }</font>    
                    <div style="margin-top: -40px;">                   
                    </div>                             
                  </div>                
                  <small>没有账号?</small><a href="register.jsp" class="signup">&nbsp;注册</a>                
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</form>
  </body>
</html>