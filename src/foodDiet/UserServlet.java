package foodDiet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DecimalFormat;

/**
 * Created by Ying on 15/12/2016.
 */
@WebServlet(name = "UserServlet", urlPatterns = "/user")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        UserDAO db = new UserDAO();
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String rbtn = request.getParameter("gender");
        String gender = "";
        if(rbtn.equals("male")){
            gender = "male";
        }else if(rbtn.equals("female")){
            gender = "female";
        }
        String rbtn2 = request.getParameter("intensity");
        String intensity = "";
        if(rbtn2.equals("sedentary")){
            intensity = "sedentary";
        }else if(rbtn2.equals("moderate")){
            intensity = "moderate";
        }else if(rbtn2.equals("active")){
            intensity = "active";
        }

        int height = Integer.parseInt(request.getParameter("height"));
        double weight= Double.parseDouble(request.getParameter("weight"));
        DecimalFormat df = new DecimalFormat("##.#");
        db.createUser(UserDAO.getNextUserId(),name,age,gender,intensity,height,weight,
                Utility.calCalories(weight,height,age,gender,intensity),Utility.calProtein(weight,height,age
                        ,gender,intensity),Utility.calCarbo(weight,height,age,gender,intensity
                       ),Utility.calFat(weight,height,age,gender,intensity),0,0,0, 0);

        getServletContext().getRequestDispatcher("/fooddiet/user/editprofile.jsp").forward(request, response);
    }
}
