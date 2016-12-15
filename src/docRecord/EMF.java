package docRecord;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class EMF {
    private static final EntityManagerFactory emfInstance = Persistence.createEntityManagerFactory("foodOrder");
    private EMF() {}
    public static EntityManagerFactory get() {
        return emfInstance;
    }
}