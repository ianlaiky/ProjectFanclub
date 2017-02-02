package foodDiet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Ying on 26/1/2017.
 */
@WebServlet(name = "UpdateUserServlet", urlPatterns = "/updateUser")
public class UpdateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        UserDAO db = new UserDAO();
        String name = session.getAttribute("username").toString();
        int height = Integer.parseInt(request.getParameter("height"));
        double weight= Double.parseDouble(request.getParameter("weight"));
        int age = Integer.parseInt(request.getParameter("age"));
        String intensity = request.getParameter("intensity");
        User a = db.retrieveUserByUsername(name);
        String gender = a.getGender();

        db.updateMeasurement(age,intensity,height,weight,Utility.calCalories(weight,height,age,gender,intensity),Utility.calProtein(weight,height,age
                ,gender,intensity),Utility.calCarbo(weight,height,age,gender,intensity
        ),Utility.calFat(weight,height,age,gender,intensity),name);
        response.sendRedirect("fooddiet/user/editprofile.jsp");
    }
}
