package cn.edu.nfu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.nfu.controler.Operator;
import cn.edu.nfu.model.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterServlet() {
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
        String rpsw = request.getParameter("rpsw");
        String verifyc  = request.getParameter("verifycode"); //得到表单输入的内容  
        String svc =(String) request.getSession().getAttribute("sessionverify");
        if(!svc.equalsIgnoreCase(verifyc)){  
            request.setAttribute("msg", "验证码错误！");  
            request.getRequestDispatcher("/register.jsp").forward(request, response);  
            return;  
        }
        if(username==null||username.trim().isEmpty()){  
            request.setAttribute("msg", "帐号不能为空");  
            request.getRequestDispatcher("/register.jsp").forward(request, response);  
            return;  
        }  
        if(password==null||password.trim().isEmpty()){  
            request.setAttribute("msg", "密码不能为空");  
            request.getRequestDispatcher("/register.jsp").forward(request, response);  
            return;  
        }  
        if(!password.equals(rpsw)){  
            request.setAttribute("msg", "两次输入的密码不同");  
            request.getRequestDispatcher("/register.jsp").forward(request, response);  
            return;  
        }
        Operator operate = new Operator();
        boolean isSuccess = operate.addUser(username, password);
        if(isSuccess){
        	request.setAttribute("msg", "恭喜："+username+"，注册成功");  
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }else{
        	request.setAttribute("msg", "对不起："+username+"，注册失败");  
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
	}

}
