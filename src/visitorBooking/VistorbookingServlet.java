package visitorBooking;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by zx on 2/3/2017.
 */
@WebServlet(name = "booking", urlPatterns = "/vistorbookingsave")
public class VistorbookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        VisitorBookingDAO db = new VisitorBookingDAO();

        HttpSession session = request.getSession();

        String name = (String) session.getAttribute("firstName");
        String nric = request.getParameter("nric");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String relativeNric = request.getParameter("relativeNRIC");
        String patientName = request.getParameter("patientName");
        String roomNum = request.getParameter("roomnum");
        String username = (String) session.getAttribute("username");

        System.out.println(name + roomNum);
        System.out.println(time);

        db.createVisitorBooking(name, nric, date, time, phone, email, relativeNric, patientName, roomNum, username);


        response.sendRedirect("vistorbookingsystem/certification.jsp");
        return;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {

    }
}
