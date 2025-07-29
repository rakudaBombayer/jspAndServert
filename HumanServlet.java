package servlet2;

import java.io.IOException;
import java.io.Serializable;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Human;


@WebServlet("/servlet2/HumanServlet")
public class HumanServlet extends HttpServlet implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Human human = new Human("湊 雄輔", 23);
        request.setAttribute("human", human);

        Human h = (Human)request.getAttribute("human");
        // 必要に応じて h の情報を使ってレスポンスを生成
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/requestScope.jsp");
        dispatcher.forward(request, response);

        
    }
}