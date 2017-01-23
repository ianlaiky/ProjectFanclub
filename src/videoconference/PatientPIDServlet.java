package videoconference;

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
@WebServlet(name = "PatientPIDServlet", urlPatterns = "/patientPIDSav")
public class PatientPIDServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("test");
        HttpSession session = request.getSession();
        String a = request.getParameter("hiddenFieldForPID");

        session.setAttribute("patientPID",a);
        response.sendRedirect("videoconference/patientVideo.jsp");
        System.out.println(a);
        return;




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
