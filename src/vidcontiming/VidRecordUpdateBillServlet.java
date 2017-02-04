package vidcontiming;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Ian on 4/2/2017.
 */
@WebServlet(name = "VidRecordUpdateBillServlet", urlPatterns = "/vidconRecordUpdatebi")
public class VidRecordUpdateBillServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        HttpSession session = request.getSession();

        VideoConTimingDAO vi = new VideoConTimingDAO();

        String biilsCurr = request.getParameter("billsNow");
        String id = request.getParameter("billsIDNow");


        if(biilsCurr.equalsIgnoreCase("false")){
vi.updateBilling(id,"True");



        }else if(biilsCurr.equalsIgnoreCase("True")){
            vi.updateBilling(id,"False");
        }else{


            System.out.println("Error when changing bills toggle");
        }


        response.sendRedirect("videoconference/callHistory.jsp");
        return;


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
