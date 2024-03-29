package videoconference;

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
 * Created by Ian on 24/1/2017.
 */
@WebServlet(name = "PatientPIDDelServlet", urlPatterns = "/patientPIDDel")
public class PatientPIDDelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        System.out.println("delete run");
        String user = (String) session.getAttribute("username");
        System.out.println("delete user");


        VideoConferenceDAO vid = new VideoConferenceDAO();


        List<VideoconferenceEntity> allList = new ArrayList<>();

        allList = vid.getAllPID();

        for (int i = 0; i < allList.size(); i++) {

            if (allList.get(i).getUsername().equalsIgnoreCase(user)) {
                vid.deleteViaPatientUsername(user);

            }

        }


        System.out.println("delete end");

        response.sendRedirect("videoconference/callHistoryForPat.jsp");

        return;
    }
}
