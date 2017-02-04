package vidcontiming;
import videoconference.VideoConferenceDAO;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/**
 * Created by Ian on 4/2/2017.
 */
public class VideoConTimingDAO {


    private Random random = new Random();
    private EntityManager em;

    public VideoConTimingDAO() {
        em = EMF.get().createEntityManager();
    }




    public boolean deleteVideoConRecord(String id) {
//        boolean suc = false;


        VidcomtimingEntity vid = em.find(VidcomtimingEntity.class, id);
        em.getTransaction().begin();
        em.remove(vid);
        em.getTransaction().commit();

        return true;


    }


    public List<VidcomtimingEntity> getAllRecord() {
        List<VidcomtimingEntity> list = null;

        try {
            Query query = em.createQuery("select a from VidcomtimingEntity a");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public VidcomtimingEntity createRecord(String docUsername, String patientUsername, String date, String startTime, String endTime) {

        System.out.println("videocon recrd save run");

       VideoConTimingDAO g=new VideoConTimingDAO();

       List<VidcomtimingEntity> gL = g.getAllRecord();

       int d=gL.size()+1;

       String id = d+"";

String bills = "n";

        VidcomtimingEntity vid = new VidcomtimingEntity(docUsername,patientUsername,date,startTime,endTime,id,bills);

        em.getTransaction().begin();
        em.persist(vid);
        em.getTransaction().commit();
        System.out.println("Saving PID for patient");

        return null;




    }


    public void updateBilling(String id,String update){

        VidcomtimingEntity vid = em.find(VidcomtimingEntity.class,id);
        em.getTransaction().begin();
        vid.setBillsPaid(update);
        em.getTransaction().commit();


    }


}
