package foodOrder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by astaroh on 12/15/2016.
 */
@WebServlet(name = "foodOrderServlet",urlPatterns = "/foodservlet")
public class foodOrderServlet extends HttpServlet {
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
        String foodName = request.getParameter("food");
        foodOrderDAO fod = new foodOrderDAO();
        fod.createFoodOrder(foodName,"1",null,null,null);

        //storing into session
        session.setAttribute("food",foodName);
        request.getRequestDispatcher("");

    }
}
