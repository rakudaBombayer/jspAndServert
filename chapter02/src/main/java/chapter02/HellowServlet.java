package chapter02;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//@WebServlet("/hello")
public class HellowServlet extends HttpServlet  {

		@Override
		protected void doGet(HttpServletRequest request,
				HttpServletResponse response)
				 throws ServletException, IOException{
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("...aaaa");
			out.println("</html>");
			
		}


}
