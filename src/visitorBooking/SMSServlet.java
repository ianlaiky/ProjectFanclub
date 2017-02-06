package visitorBooking;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

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
 * Created by zx on 2/6/2017.
 */
@WebServlet(name = "sms", urlPatterns = "/sendingsms")
public class SMSServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ACCOUNT_SID = "AC67144f548596c6845be23dba57eba651";
        String AUTH_TOKEN = "73c5dfe5494c94c69c92e14b739f9ae4";

        HttpSession session = request.getSession();


        VisitorBookingDAO db = new VisitorBookingDAO();
        List<VisitorbookingEntity> allVisitor = new ArrayList<>();
        String signedinuser = (String) session.getAttribute("username");

        String phone=null;
        String date=null;
        String time=null;

        allVisitor = db.getAllVisitorData();



        for (int i = 0; i < allVisitor.size(); i++) {

            if (allVisitor.get(i).getUsername().equalsIgnoreCase(signedinuser)){
                phone=allVisitor.get(i).getPhone();
                date=allVisitor.get(i).getDate();
                time=allVisitor.get(i).getTime();


            }
        }

        phone="+65"+phone;
        System.out.println(phone+date+time);

        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

        Message message = Message
                .creator(new PhoneNumber(phone),  // to
                        new PhoneNumber("+16674014541"),  // from
                        "Your visiting booking appointment is on "+date+" at "+time)
                .create();

        response.sendRedirect("vistorbookingsystem/certification.jsp");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
