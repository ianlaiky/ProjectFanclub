package videoconference;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created by Ian on 22/1/2017.
 */
public class VideoConferenceDAO {
    private Random random = new Random();
    private EntityManager em;

    public VideoConferenceDAO() {
        em = EMF.get().createEntityManager();
    }


    public List<VideoconferenceEntity> getSpecificPatrientPID(String user) {
        List<VideoconferenceEntity> list = new ArrayList<>();

//        try {
            Query query = em.createQuery("select a from VideoconferenceEntity a where a.username = :p ");
            query.setParameter("p", user).getSingleResult();
            list = query.getResultList();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
        return list;

    }

    public boolean deleteViaPatientUsername(String username) {
//        boolean suc = false;


        VideoconferenceEntity vid = em.find(VideoconferenceEntity.class, username);
        em.getTransaction().begin();
        em.remove(vid);
        em.getTransaction().commit();

        return true;


    }

    public List<VideoconferenceEntity> getAllPatientPID() {
        List<VideoconferenceEntity> list = null;

        try {
            Query query = em.createQuery("select a from VideoconferenceEntity a where a.typeOfUser='p' ");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public List<VideoconferenceEntity> getAllDoctorPID() {
        List<VideoconferenceEntity> list = null;

        try {
            Query query = em.createQuery("select a from VideoconferenceEntity a where a.typeOfUser='d' ");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public List<VideoconferenceEntity> getAllPID() {
        List<VideoconferenceEntity> list = null;

        try {
            Query query = em.createQuery("select a from VideoconferenceEntity a");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public VideoconferenceEntity createPIDPatient(String user, String pid, String typeOfUser) {

        VideoconferenceEntity vid = new VideoconferenceEntity(user, pid, typeOfUser);

        em.getTransaction().begin();
        em.persist(vid);
        em.getTransaction().commit();
        System.out.println("Saving PID for patient");

        return null;


    }


}
