package videoConference;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Ian on 22/1/2017.
 */
@WebServlet(name = "PatientPIDSaveServlet", urlPatterns = "/doctorPIDSave")
public class DoctorPIDSaveServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String a = request.getParameter("hiddenFieldForPID");

        session.setAttribute("doctorPID",a);
        System.out.println(a);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
