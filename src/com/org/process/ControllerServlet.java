package com.org.process;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			HttpSession session = request.getSession(true);
			if(username.equals("system") && password.equals("java")) {
				session.setAttribute("username", username);
				response.sendRedirect("page1.jsp");
			}
			else if(username.equals("admin") && password.equals("passw0rd")) {
				session.setAttribute("username", username);
				response.sendRedirect("courseform.jsp");
			}
			else {
				session.invalidate();
				String errLogin = "Sorry UserName or Password Error!";
				request.setAttribute("error", errLogin);
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);	
			}
		}catch (Throwable theException) {
			// TODO: handle exception
			System.out.println(theException);
		}
		
	}

}
