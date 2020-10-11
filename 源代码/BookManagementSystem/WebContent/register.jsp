<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>注册页面</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
  </head>
  <script type="text/javascript">  
      function change(){  
          var img =document.getElementById("verify");  
          img.src="VerifyCodeServlet?a="+new Date().getTime();  
      }
  </script>
  <body>
  <form action="RegisterServlet" method="post">
    <div class="page login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
          
            <!-- 左边-->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                    <h1>欢迎注册</h1>
                  </div>
                  <p>图书管理系统</p>
                </div>
              </div>
            </div>
            
            <!-- 右边    -->           
            <div class="col-lg-6 bg-white">
              <div class="form d-flex align-items-center">
                <div class="content">
                    <div class="form-group">
                      <input id="register-username" class="input-material" type="text" name="username" placeholder="请输入用户名" required data-msg="请输入用户名" >
								      
                    </div>
                    <div class="form-group">
                      <input id="register-password" class="input-material" type="password" name="password" placeholder="请输入密码"  required data-msg="请输入密码" >
                    	
                    </div>
                    <div class="form-group">
                      <input id="register-passwords" class="input-material" type="password" name="rpsw" placeholder="确认密码"  >
                       
                    	<div class="form-group">                
                    <input type = "text" name="verifycode" placeholder="验证码" class="input-material">
                    <a href="javascript:change()">
                        <img src="VerifyCodeServlet" id="verify">
                        </div>     
                      <input id="regbtn" type="submit" name="registerSubmit" class="btn btn-primary" value="注册">                            
                    <font color="red" size="2"> ${msg }</font>
                    <div style="margin-top: -30px;">                   
                    </div> 
                    </div>
                  <small>已有账号?</small><a href="login.jsp" class="signup">&nbsp;登录</a>
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