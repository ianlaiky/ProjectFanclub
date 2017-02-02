package foodOrder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

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
        ArrayList<String> orderList = new ArrayList<String>();

//       String[] foodName = request.getParameterValues("food");

        String foodNames = request.getParameter("orderlist");
        System.out.println("FOODNAMES ARRAYSTRING = " + foodNames);
        String[] foodNamesArr = foodNames.split(",");
//        Arrays.sort(foodNamesArr);

        for (int i = 0 ; i<foodNamesArr.length ; i++){
            fod.createFoodOrder(foodNamesArr[i], "1", null, null, null);
        }


//        for (int i = 0; i<foodName.length ; i++){
//            System.out.println("Check food name="+foodName[i]);
//        }
//
//        for (int i = 0; i<foodName.length ; i++) {
//       //check if array is empty
//                if(foodName[i]==""){
//                    System.out.println("empty food string detected,record not created for: " + i);
//                }
//                else{
//                    //action to do on items whcih isnt empty
//                    fod.createFoodOrder(foodName[i], "1", null, null, null);
//                    orderList.add(foodName[i]);
//                }
//
//        }


        //storing into session
//        Collections.sort(orderList);
//        for(int i =0; i<orderList.size();i++){
//            System.out.println("SortedOrderList:"+orderList.get(i));
//        }
//        System.out.println("orderList size = " + orderList.size());

//        session.setAttribute("orderList",orderList);
        getServletContext().getRequestDispatcher("/foodorder/success.jsp").forward(request, response);

    }
}
