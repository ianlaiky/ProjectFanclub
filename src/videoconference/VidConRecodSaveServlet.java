package videoconference;

import vidcontiming.VideoConTimingDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

/**
 * Created by Ian on 4/2/2017.
 */
@WebServlet(name = "VidConRecodSaveServlet",urlPatterns = "/vidconRecordSave")
public class VidConRecodSaveServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        System.out.println("record save servlet running");

        HttpSession session = request.getSession();




        DateTimeFormatter dt = DateTimeFormatter.ofPattern("HH:mm:ss");
        ZonedDateTime now = ZonedDateTime.now(ZoneId.of("Asia/Singapore"));
        System.out.println(dt.format(now)); //2016/11/16 12:08:43

        String timenow = dt.format(now);
        System.out.println("current time: " + timenow);


        String patientUsername = (String) session.getAttribute("vcallRecordPatUser");
        String docUsername = (String) session.getAttribute("vcalRecordDocUser");
        String currentDate = (String) session.getAttribute("vcallRecordCurrentDate");
        String startTime = (String) session.getAttribute("vcallRecordStartTime");
        String endTime = timenow;






        VideoConTimingDAO sav = new VideoConTimingDAO();
        sav.createRecord(docUsername,patientUsername,currentDate,startTime,endTime);

        response.sendRedirect("videoconference/patientPIDSelect.jsp");
        return;




    }
}
