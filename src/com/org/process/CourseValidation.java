package com.org.process;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.servlet4preview.RequestDispatcher;

/**
 * Servlet implementation class CourseValidation
 */
@WebServlet("/CourseValidation")
public class CourseValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseValidation() {
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
			String name = request.getParameter("name");
			String age = request.getParameter("age");
			String national = request.getParameter("national");
			String subject[] = request.getParameterValues("checkboxSubject");
			String languages[] = request.getParameterValues("checkboxLanguages");
			
			request.setAttribute("name", name);
			request.setAttribute("age",age);
			request.setAttribute("national",national);
			request.setAttribute("subject", subject);
			request.setAttribute("languages", languages);
			
			javax.servlet.RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
			rd.forward(request, response);	
			
		}catch(Throwable theException) {
			// TODO: handle exception
			System.out.println(theException);
		}
	}

}
