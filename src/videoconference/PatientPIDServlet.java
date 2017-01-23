package videoconference;

import patientRecord.PatientDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by Ian on 22/1/2017.
 */
@WebServlet(name = "PatientPIDServlet", urlPatterns = "/patientPIDSav")
public class PatientPIDServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("test");
        HttpSession session = request.getSession();
        String a = request.getParameter("hiddenFieldForPID");
        String user = (String) session.getAttribute("username");

        System.out.println("PIUD user"+user);

        session.setAttribute("patientPID",a);

        VideoConferenceDAO nat = new VideoConferenceDAO();


        List<VideoconferenceEntity> userFromdb = nat.getSpecificPatrientPID(user);

        System.out.println("Size of nat"+userFromdb.size());

        for(int i=0;i<userFromdb.size();i++){
            System.out.println("Userfromdb: "+userFromdb.get(i).getUsername());
            System.out.println("current user: "+user);


            nat.deleteViaPatientUsername(user);



//            if((userFromdb.get(i).getUsername().equalsIgnoreCase(user))){
//                System.out.println("delete try");
//                nat.deleteViaPatientPID(user);
//                        nat.createPIDPatient(user,a,"p");
//            }
        }






        response.sendRedirect("videoconference/patientVideo.jsp");
        System.out.println(a);
        return;




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
