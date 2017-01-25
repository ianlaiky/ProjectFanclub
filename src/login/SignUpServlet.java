package login;

import patientRecord.PatientDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Ian on 25/1/2017.
 */
@WebServlet(name = "SignUpServlet", urlPatterns = "/patientSignUp")
public class SignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        PatientDAO pat = new PatientDAO();

        String firstName = request.getParameter("firstName");
        String phoneNumber = request.getParameter("contactPhone");
        String password = request.getParameter("pPass");





        String test = pat.createPatient(firstName,password,phoneNumber);
        System.out.println("pateint create sucess :"+test);
session.setAttribute("patientSignUpUsername",test);


response.sendRedirect("registerSucess.jsp");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
