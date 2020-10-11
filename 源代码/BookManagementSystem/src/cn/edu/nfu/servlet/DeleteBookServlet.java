package cn.edu.nfu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.nfu.controler.Operator;

/**
 * Servlet implementation class deletebookServlet
 */
@WebServlet("/DeleteBookServlet")
public class DeleteBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteBookServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// doGet(request, response);
		request.setCharacterEncoding("utf-8");  
        response.setContentType("text/html;charset=utf-8"); 
		String username = (String)request.getSession().getAttribute("username");
		if(username != null){
			int id = -1;
			String name = "";
			String choice = request.getParameter("choice");
			Operator operator = new Operator();
			if(choice.equals("id")){
				String idStr = request.getParameter("id");
				if(idStr.equals("")){
					request.setAttribute("msg", "ɾ��ʧ�ܣ�������ı��Ϊ��");
					request.getRequestDispatcher("/deletebook.jsp").forward(request, response);
					return;
				}
				id = Integer.parseInt(idStr);
				boolean isSuccess = operator.deleteBook(id,name);
				if(isSuccess){
					request.setAttribute("msg", "ɾ���ɹ�");
					request.getRequestDispatcher("/deletebook.jsp").forward(request, response);
					return;
				}else{
					request.setAttribute("msg", "ɾ��ʧ��");
					request.getRequestDispatcher("/deletebook.jsp").forward(request, response);
					return;
				}
			}else if(choice.equals("name")){
				name = request.getParameter("bookname");
				if(name.equals("")){
					request.setAttribute("msg", "�޸�ʧ�ܣ������������Ϊ��");
					request.getRequestDispatcher("/deletebook.jsp").forward(request, response);
					return;
				}
				boolean isSuccess = operator.deleteBook(id,name);
				if(isSuccess){
					request.setAttribute("msg", "ɾ���ɹ�");
					request.getRequestDispatcher("/deletebook.jsp").forward(request, response);
					return;
				}else{
					request.setAttribute("msg", "ɾ��ʧ��");
					request.getRequestDispatcher("/deletebook.jsp").forward(request, response);
					return;
				}
			}
		}else{
			request.setAttribute("msg", "����δ��½ҳ�棬�뷵�ص�½���ٽ��в���");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
	}

}
