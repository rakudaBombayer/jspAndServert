package servlet2;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UranaiServlet
 */


//@WebServlet("/UranaiServlet")
public class UranaiServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] luckArray = {"超スッキリ" , "スッキリ", "最悪"};
		int index = (int)(Math.random() * 3);
		String luck = luckArray[index];
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("MM月dd日");
		
		String today = sdf.format(date);


        // 🔸 JSP に渡すデータを設定
        request.setAttribute("today", today);
        request.setAttribute("luck", luck);

        // 🔸 JSP へフォワード（内部転送）
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/uranai2.jsp");
        dispatcher.forward(request, response);
	
	
	}

}
