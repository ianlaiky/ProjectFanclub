package queue;

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
 * Created by aravin on 26/1/2017.
 */
@WebServlet(name = "QueuServlet", urlPatterns = "/onlinequeuesystem")
public class QueuServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Queue servlet run");

        HttpSession session = request.getSession();
        QueueSystemDAO qs = new QueueSystemDAO();
        List<OnlinequeuesystemEntity> queueLis = new ArrayList<OnlinequeuesystemEntity>();

        String currentUser = (String) session.getAttribute("username");




//        Integer no = (Integer) session.getAttribute("queueNo");
        queueLis = qs.getAllQueueData();

        for(int i=0;i<queueLis.size();i++){
// if same patient take queue no he will get another one and will overwrite the other queue num
if(currentUser.equalsIgnoreCase(queueLis.get(i).getPatientName())){

  int tempno = queueLis.get(i).getQueueNumber();
  qs.deleteViaQueueNo(tempno);

}


        }


//        for (int i = 0; i < queueList.size(); i++) {
//
//            queueList.get(i).getQueueNumber();
//
//
//        }

        session.setAttribute("queueList",queueLis);


        List<OnlinequeuesystemEntity> queueList = (List<OnlinequeuesystemEntity>) session.getAttribute("queueList");
        System.out.println("Queue list0"+queueLis.size());


        // issuing queue number to user
        for (int i = 0; i < queueList.size(); i++) {
            System.out.println("running");
            System.out.println("Qeueueno: "+queueList.get(i).getQueueNumber());


        }
        int newQueueno;
        if (queueList.size() == 0) {
            newQueueno = 1;

        } else {

            newQueueno = queueList.get(queueList.size() - 1).getQueueNumber() + 1;


        }
        String user = (String) session.getAttribute("username");
        QueueSystemDAO aa = new QueueSystemDAO();
        aa.createQueue(user, newQueueno);

        session.setAttribute("newQueueNo",newQueueno);

        response.sendRedirect("onlinequeuesystem/queueNoDisplay.jsp");


        return;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
