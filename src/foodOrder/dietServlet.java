package foodOrder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by astaroh on 12/15/2016.
 */
@WebServlet(name = "dietServlet",urlPatterns = "/dietservlet")
public class dietServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        PrintWriter out = response.getWriter();
//        out.println(getContent());
//        out.close();

    }
    private String getContent(){
        return "";
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String enterdate = request.getParameter("enterdate");
        session.setAttribute("enterdate",enterdate);
        System.out.println("CHECK ENTERDATE SET " + enterdate);







        getServletContext().getRequestDispatcher("/foodorder/dietrecommendreload.jsp").forward(request, response);

    }
}
