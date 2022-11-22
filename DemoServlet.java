package Servlets;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
	
public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String name="shaziya";
	List<Student> stud=Arrays.asList(new Student(1,"sha"),new Student(2,"ziya"),new Student(3,"shaya"));
		
		Student s=new Student(108,"shaziya");

		
		request.setAttribute("student",stud);
		request.setAttribute("label",s);
		RequestDispatcher rd=request.getRequestDispatcher("display.jsp");
		rd.forward(request, response);
	}

}
