package queue;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;
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
 * Created by aravin on 06-Feb-17.
 */
@WebServlet(name = "smsServlet", urlPatterns = "/tqitest")
public class smsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ACCOUNT_SID = "ACd7f6132afcea056e92bae959002f78ac";
        String AUTH_TOKEN = "3a050068c4cbe30d7274e911e381206c";

        HttpSession session = request.getSession();
        String cUs = (String) session.getAttribute("username");
        Integer sa = (Integer) session.getAttribute("newQueueNo");

        Integer tt = (Integer) session.getAttribute("queuebigssi");


        PatientDAO d = new PatientDAO();
        List<PatientrecordEntity> dLis = new ArrayList<>();
        dLis = d.getAllPatientUserAndPass();

        String phone = null;


        String text = (String) session.getAttribute("timeququecallsms");
        Integer r = Integer.parseInt(text);
        r = r / 60;
        String e = r + "";


        for (int i = 0; i < dLis.size(); i++) {

            if (cUs.equalsIgnoreCase(dLis.get(i).getpUsername())) {
                phone = dLis.get(i).getpPhoneNumber();
            }
        }
        phone = "+65" + phone;


        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

        Message message = Message
                .creator(new PhoneNumber(phone),  // to
                        new PhoneNumber("+13172043324"),  // from
                        "Your queue number is " + sa + " the total number of people in the queue is " + tt + " turn is in " + e + " minutes ")
                .create();

        response.sendRedirect("onlinequeuesystem/view2.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
