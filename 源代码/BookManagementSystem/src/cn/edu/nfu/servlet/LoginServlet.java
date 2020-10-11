package cn.edu.nfu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.nfu.controler.Operator;
import cn.edu.nfu.model.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//doGet(request, response);
		request.setCharacterEncoding("utf-8");  
        response.setContentType("text/html;charset=utf-8");  
        String username = request.getParameter("username");  
        String password = request.getParameter("password");
        String verifyc  = request.getParameter("verifycode"); 
        String svc =(String) request.getSession().getAttribute("sessionverify");
        Operator operate = new Operator();
        String psw =operate.findUsername(username);  
        if(!svc.equalsIgnoreCase(verifyc)){  
            request.setAttribute("msg", "验证码错误！");  
            request.getRequestDispatcher("/login.jsp").forward(request, response);  
            return;  
        }  
        if(psw ==null){  
            request.setAttribute("msg", "没有这个用户，请注册！");  
            request.getRequestDispatcher("/login.jsp").forward(request, response);  
            return;  
        }  
        if(psw!=null&&!psw.equals(password)){  
            request.setAttribute("msg", "密码错误请重新输入！");  
            request.getRequestDispatcher("/login.jsp").forward(request, response);  
            return;  
        }  
        if(psw.equals(password)){  
            request.setAttribute("msg", "用户："+username+",欢迎访问");
            request.getSession().setAttribute("username", username);
            request.getRequestDispatcher("/welcome.jsp").forward(request, response);  
            //response.setHeader("Refresh","1;url=welcome.jsp"); 
        }  
	}

}
