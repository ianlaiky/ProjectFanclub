package login;

import docRecord.DoctorDAO;
import patientRecord.PatientDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Ying on 16/12/2016.
 */
@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        PatientDAO patient = new PatientDAO();
        DoctorDAO doctor = new DoctorDAO();


        boolean userVerification=false;


        if(username.isEmpty()){

            response.sendRedirect("errorPage.jsp");

        }else if(username.substring(0,1).equalsIgnoreCase("p")){


            userVerification = patient.checkPatientUser(username,password);



        }else if(username.substring(0,1).equalsIgnoreCase("d")){
            userVerification = doctor.checkDoctorUser(username,password);


        }else{
            response.sendRedirect("errorPage.jsp");

        }

if(userVerification){

            if(username.substring(0,1).equalsIgnoreCase("p")){
                response.sendRedirect("patientFrontPage.jsp");

            }else if(username.substring(0,1).equalsIgnoreCase("d")){
                response.sendRedirect("docFrontPage.jsp");

            }else{
                response.sendRedirect("errorPage.jsp");
            }

}else{
    response.sendRedirect("errorPage.jsp");
}






//        session.setAttribute("username",username);
//        response.sendRedirect("/fooddiet/index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
