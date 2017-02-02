package visitorBooking;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/**
 * Created by Ian on 3/2/2017.
 */
public class VisitorBookingDAO {

    private Random random = new Random();
    private EntityManager em;


    public VisitorBookingDAO() {
        em = EMF.get().createEntityManager();
    }


    public List<VisitorBookingDAO> getAllVisitorData() {
        List<VisitorBookingDAO> list = null;

        try {
            Query query = em.createQuery("select a from VisitorbookingEntity a");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public boolean deleteVisitorBooking(String username) {
//        boolean suc = false;


        VisitorbookingEntity vid = em.find(VisitorbookingEntity.class, username);
        em.getTransaction().begin();
        em.remove(vid);
        em.getTransaction().commit();

        return true;


    }

}
