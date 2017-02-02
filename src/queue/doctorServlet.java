package queue;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by aravin on 03-Feb-17.
 */
@WebServlet(name = "doctorServlet", urlPatterns = "/queueDel")
public class doctorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        QueueSystemDAO qn = new QueueSystemDAO();
        String[] results = request.getParameterValues("QueueD");
        for (int i = 0; i < results.length; i++) {
            System.out.println(results[i]);
            qn.deleteViaQueueNo(Integer.parseInt(results[i]));


        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
