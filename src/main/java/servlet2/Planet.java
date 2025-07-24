package servlet2;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/planet")
public class Planet extends HttpServlet {


	       
	    
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String[] planetsJP = {"水星" , "金星", "地球", "火星", "木星", "土星", "天王星", "海王星"};
			String[] planetsEN = {"Mercury" , "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Poseidon"};
			int index[];
			
			
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("MM月dd日");
			
			String today = sdf.format(date);
		
		
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UTF-8\">");
		out.println("<title>太陽系の惑星</title>");
		out.println("</head>");
		out.println("<body>");
		
		for (int i = 0; i < planetsJP.length; i++) {
		    out.println("<p>" + planetsJP[i] + ":" + planetsEN[i] + "</p>");
		}

		out.println("</body>");
		out.println("</html>");
		
		
		}



}
