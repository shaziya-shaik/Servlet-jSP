package Servlets;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/sq")
public class sq extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int k=0;
		//int k=Integer.parseInt(request.getParameter("k"));
		//int k=(int)request.getAttribute("k");
		//HttpSession session=request.getSession();
		//int k=(int)session.getAttribute("k");
		Cookie cookies[]=request.getCookies();
		for(Cookie c:cookies) {
			if(c.getName().equals("k")) {
				 k=Integer.parseInt(c.getValue());
			}
		}
		k=k*k;
		PrintWriter out=response.getWriter();
		out.println("<html><body bgcolor='pink'>");
				out.println("k="+k);
		
				
				out.println("</body></html>");
	}
}
