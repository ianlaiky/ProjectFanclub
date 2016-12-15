package foodDiet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

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
        String age = request.getParameter("age");
        String rbtn = request.getParameter("gender");
        String gender;
        if(rbtn.equals("male")){
            gender = "male";
        }else if(rbtn.equals("female")){
            gender = "female";
        }
        String rbtn2 = request.getParameter("intensity");
        String intensity;
        if(rbtn.equals("sedentary")){
            intensity = "sedentary";
        }else if(rbtn.equals("moderate")){
            intensity = "moderate";
        }else if(rbtn.equals("active")){
            intensity = "active";
        }


        getServletContext().getRequestDispatcher("/editprofile.jsp").forward(request, response);
    }
}
