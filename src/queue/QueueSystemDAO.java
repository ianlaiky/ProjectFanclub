package queue;

import videoconference.*;


import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created by aravin on 24-Jan-17.
 */
public class QueueSystemDAO {
    private Random random = new Random();
    private EntityManager em;

    public QueueSystemDAO() {
        em = videoconference.EMF.get().createEntityManager();
    }


    public List<OnlinequeuesystemEntity> getAllQueueData() {
        List<OnlinequeuesystemEntity> list = null;

        try {
            Query query = em.createQuery("select a from OnlinequeuesystemEntity a");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public OnlinequeuesystemEntity createQueue(String user, int queueno) {

        OnlinequeuesystemEntity vid = new OnlinequeuesystemEntity(queueno, user);

        em.getTransaction().begin();
        em.persist(vid);
        em.getTransaction().commit();
        System.out.println("Saving PID for patient");

        return null;


    }

    public boolean deleteViaQueueNo(String no) {
//        boolean suc = false;


        OnlinequeuesystemEntity vid = em.find(OnlinequeuesystemEntity.class, no);
        em.getTransaction().begin();
        em.remove(vid);
        em.getTransaction().commit();

        return true;


    }
}
