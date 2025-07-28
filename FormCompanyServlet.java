package servlet2;


import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/FormCompanyServlet")
public class FormCompanyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        // フォームから取得するデータ
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String text = request.getParameter("text");

        // リクエストにデータをセットしてJSPに渡す
        request.setAttribute("name", name);
        request.setAttribute("type", type);
        request.setAttribute("text", text);

        // JSPを表示
        request.getRequestDispatcher("FormCompany.jsp").forward(request, response);
    }
}
