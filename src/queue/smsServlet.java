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
        String ACCOUNT_SID = "ACa1126441199f69f7fe3d08c38004da41";
        String AUTH_TOKEN = "e3fdbb9a5b96a5f170be0b455cd4ef8a";

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
                        new PhoneNumber("+12626313645"),  // from
                        "Your queue number is " + sa + "." + " The total number of people in the queue is " + tt + "." + " Your turn is in " + e + " seconds ")
                .create();

        response.sendRedirect("onlinequeuesystem/view2.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
