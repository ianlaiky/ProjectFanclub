package docRecord;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;
import java.util.Random;

/**
 * Created by Ian on 21/1/2017.
 */
public class DoctorDAO {
    private Random random = new Random();
    private EntityManager em;

    public DoctorDAO() {

        em = EMF.get().createEntityManager();


    }

    public List<DoctorrecordEntity> getAllDocUserAndPass() {
        List<DoctorrecordEntity> list = null;

        try {
            Query query = em.createQuery("select a from docRecord a");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }
    public List<DoctorrecordEntity> getDoctorUsername() {
        List<DoctorrecordEntity> list = null;

        try {
            Query query = em.createQuery("select a.dusername from DoctorrecordEntity a");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }
    public boolean checkDoctorUser(String input, String pass) {

        List<DoctorrecordEntity> list = null;

        try {
            Query query = em.createQuery("select a from DoctorrecordEntity a");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }

        boolean userAvailable = false;
        boolean passCorrect = false;
        boolean allowUser = false;
        for (int i = 0; i < list.size(); i++) {

            if (input.equalsIgnoreCase(list.get(i).getDusername())) {
                userAvailable = true;
                if (pass.equalsIgnoreCase(list.get(i).getDusername())) {
                    passCorrect = true;
                    allowUser = true;
                }
            }


        }
        return allowUser;
    }


}
