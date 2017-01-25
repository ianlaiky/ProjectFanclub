package patientRecord;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created by Ian on 21/1/2017.
 */
public class PatientDAO {
    private Random random = new Random();
    private EntityManager em;

    public PatientDAO() {
        em = EMF.get().createEntityManager();

    }

    public List<PatientrecordEntity> getAllPatientUserAndPass() {
        List<PatientrecordEntity> list = null;

        try {
            Query query = em.createQuery("select a from PatientrecordEntity a");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public List<PatientrecordEntity> getPatientUsername(){
        List<PatientrecordEntity> list = null;

        try {
            Query query = em.createQuery("select a.pUsername from PatientrecordEntity a");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;


    }

    public boolean checkPatientUser(String input, String pass) {

        List<PatientrecordEntity> list = null;

        try {
            Query query = em.createQuery("select a from PatientrecordEntity a");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }

        boolean userAvailable = false;
        boolean passCorrect = false;
        boolean allowUser = false;
        for (int i = 0; i < list.size(); i++) {

            if (input.equalsIgnoreCase(list.get(i).getpUsername())) {
                userAvailable = true;
                if (pass.equalsIgnoreCase(list.get(i).getpPassword())) {
                    passCorrect = true;
                    allowUser = true;
                }
            }


        }
        return allowUser;
    }


    public String createPatient(String firstName,String password,String phone){



        List<PatientrecordEntity>checkList = new ArrayList<>();
        checkList=getAllPatientUserAndPass();

       String a = checkList.get(checkList.size()-1).getpUsername();
        System.out.println("sizee"+a);

        System.out.println(a.substring(1));

        int pateintid = Integer.parseInt(a.substring(1))+1;
        System.out.println(pateintid);


        String newpatt = "p"+pateintid;

        System.out.println("hey name???"+firstName);
        System.out.println(password);


        PatientrecordEntity newPat = new PatientrecordEntity(newpatt,password,firstName,phone);

        em.getTransaction().begin();
        em.persist(newPat);
        em.getTransaction().commit();
        System.out.println("Saving patient");

return newpatt;






    }


}
