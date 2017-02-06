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
        foodOrderDAO fod = new foodOrderDAO();

        String foodNames = request.getParameter("orderlist");
        System.out.println("FOODNAMES ARRAYSTRING = " + foodNames);
        String[] foodNamesArr = foodNames.split(",");
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        String currentdate = dateFormat.format(date);


        for (int i = 0 ; i<foodNamesArr.length ; i++){
            if(!(foodNamesArr[i].equals(""))) {
                fod.createFoodOrder(foodNamesArr[i], "1", (String) session.getAttribute("username"),
                        (String) session.getAttribute("firstName"), null, currentdate);
            }
        }



        getServletContext().getRequestDispatcher("/foodorder/success.jsp").forward(request, response);

    }
}
