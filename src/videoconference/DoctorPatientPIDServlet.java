package videoconference;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Ian on 24/1/2017.
 */
@WebServlet(name = "DoctorPatientPIDServlet", urlPatterns = "/videoConPidRetrieve")
public class DoctorPatientPIDServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        String username = request.getParameter("formPidUsername");
        String pid = request.getParameter("formpidPid");

        System.out.println("Doc selected: " + pid);

        session.setAttribute("dicCalledUsername", username);
        session.setAttribute("docCalledPid", pid);


        VideoConferenceDAO vid = new VideoConferenceDAO();
        vid.deleteViaPatientUsername(username);

        response.sendRedirect("videoconference/docVideo.jsp");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
