package videoconference;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

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


        System.out.println("some username??: " + username);

        String cUser = (String) session.getAttribute("username");

        System.out.println("DOC username: " + cUser);


        session.setAttribute("vcallRecordPatUser", username);
        session.setAttribute("vcalRecordDocUser", cUser);


        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDate localDate = LocalDate.now();
        System.out.println(dtf.format(localDate));

        String date = dtf.format(localDate);

        System.out.println("CUrrnet date = " + date);


        DateTimeFormatter dt = DateTimeFormatter.ofPattern("HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        System.out.println(dt.format(now)); //2016/11/16 12:08:43

        String timenow = dt.format(now);
        System.out.println("current time: " + timenow);


        session.setAttribute("vcallRecordCurrentDate", date);

        session.setAttribute("vcallRecordStartTime", timenow);


        VideoConferenceDAO vid = new VideoConferenceDAO();
        vid.deleteViaPatientUsername(username);

        response.sendRedirect("videoconference/docVideo.jsp");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
