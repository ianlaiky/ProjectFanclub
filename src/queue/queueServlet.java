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

/*
 * Created by aravin on 23-Jan-17.
 */
@WebServlet(name = "queueServlet")
public class queueServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        HttpSession session = request.getSession();
        QueueSystemDAO qs = new QueueSystemDAO();
        List<OnlinequeuesystemEntity> queueList = new ArrayList<OnlinequeuesystemEntity>();


        Integer no = (Integer) session.getAttribute("queueNo");
        queueList = qs.getAllQueueData();

//        for (int i = 0; i < queueList.size(); i++) {
//
//            queueList.get(i).getQueueNumber();
//
//
//        }

        session.setAttribute("queueList",queueList);

        response.sendRedirect("onlinequeuesystem/queueNoDisplay.jsp");

        return;

    }

}



