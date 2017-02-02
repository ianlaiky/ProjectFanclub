package queue;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * Created by aravin on 25-Jan-17.
 */
public class EMF {
    private static final EntityManagerFactory emfInstance = Persistence.createEntityManagerFactory("jedp");

    private EMF() {
    }

    public static EntityManagerFactory get() {
        return emfInstance;
    }
}