package login;

import docRecord.DoctorDAO;
import docRecord.DoctorrecordEntity;
import patientRecord.PatientDAO;
import patientRecord.PatientrecordEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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





       List<PatientrecordEntity> allPatientuser = new ArrayList<>();
        List<DoctorrecordEntity> allDocUser = new ArrayList<>();


        allPatientuser=patient.getAllPatientUserAndPass();
        allDocUser=doctor.getAllDocUserAndPass();



        for(int i=0;i<allPatientuser.size();i++){

            System.out.println(allPatientuser.get(i).getpName());
            System.out.println(allPatientuser.get(i).getpUsername());


        }


        boolean userVerification = false;

        System.out.println("running");
        if (username.isEmpty()) {
            System.out.println("alr ran");

            response.sendRedirect("errorPage.jsp");
            return;

        } else if (username.substring(0, 1).equalsIgnoreCase("p")) {


            userVerification = patient.checkPatientUser(username, password);


        } else if (username.substring(0, 1).equalsIgnoreCase("d")) {
            System.out.println("pass");
            userVerification = doctor.checkDoctorUser(username, password);
            System.out.println(userVerification);


        }

        if (userVerification) {

            if (username.substring(0, 1).equalsIgnoreCase("p")) {
                for(int i=0;i<allPatientuser.size();i++){

                    if(allPatientuser.get(i).getpUsername().equalsIgnoreCase(username)){
                        session.setAttribute("firstName",allPatientuser.get(i).getpName());
                    }


                }




                session.setAttribute("username",username);
                session.setAttribute("signInPatient","true");
//                session.setAttribute("signInGlobal","true");
                response.sendRedirect("patientFrontPage.jsp");
                return;

            } else if (username.substring(0, 1).equalsIgnoreCase("d")) {


                for(int i=0;i<allDocUser.size();i++){

                    if(allDocUser.get(i).getDusername().equalsIgnoreCase(username)){
                        session.setAttribute("firstName",allDocUser.get(i).getdName());


                    }


                }





                session.setAttribute("username",username);
                session.setAttribute("signInDoctor","true");
//                session.setAttribute("signInGlobal","true");
                response.sendRedirect("docFrontPage.jsp");
                return;

            } else {
                response.sendRedirect("errorPage.jsp");
                return;
            }

        } else {
            System.out.println("ran agn");
            response.sendRedirect("errorPage.jsp");
            return;
        }


//        session.setAttribute("username",username);
//        response.sendRedirect("/fooddiet/index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
