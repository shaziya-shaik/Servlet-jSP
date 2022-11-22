package Servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class add
 */
@WebServlet("/addServlet")
public class addServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i=Integer.parseInt(request.getParameter("num1"));
		int j=Integer.parseInt(request.getParameter("num2"));
		int k=i+j;
		//PrintWriter out=response.getWriter();
		//out.println("k="+k);
		//HttpSession session=request.getSession();
		//session.setAttribute("k",k);
		Cookie cookie=new Cookie("k",k+"");
		response.addCookie(cookie);
		
	//	RequestDispatcher rd=request.getRequestDispatcher("/sq");
		// response.sendRedirect("sq?k="+k);
		 response.sendRedirect("sq");
		//rd.forward(request, response);
		
		
	}

}
