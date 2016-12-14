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
//    public BooksEntity getBook() {
//        List<BooksEntity> list = getAllBook();
//        int i = random.nextInt(list.size());
//        return list.get(i);
//    }
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
}