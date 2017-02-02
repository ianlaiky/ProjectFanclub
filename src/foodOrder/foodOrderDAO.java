package foodOrder;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;
import java.util.Random;

public class foodOrderDAO {
    private Random random = new Random();
    private EntityManager em;

    public foodOrderDAO() {
        em = EMF.get().createEntityManager();
    }
    public FoodorderEntity getFoodOrder(int index) {
        List<FoodorderEntity> list = getAllfoodOrder();
        return list.get(index);
    }
    public List<FoodorderEntity> getAllfoodOrder() {
        List<FoodorderEntity> list = null;
        try {
            Query query = em.createQuery("select b from FoodorderEntity b");
            list = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public FoodorderEntity createFoodOrder(String foodName,String foodQuantity,String patientId,String patientName,String roomId,String orderdate ){
        List<FoodorderEntity>list =  null;
        list = getAllfoodOrder();
        int id = list.size()+1;
        FoodorderEntity order = new FoodorderEntity(id,foodName,foodQuantity,patientId,patientName,roomId,orderdate);
        em.getTransaction().begin();
        em.persist(order);
        em.getTransaction().commit();
        System.out.println("creating food order method");

        //retrieve updated list
        list = getAllfoodOrder();

        //RETURN STATEMENT DEBUGGING
        return null;


    }

}