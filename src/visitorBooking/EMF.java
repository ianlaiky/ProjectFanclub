package visitorBooking;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class EMF {
    private static final EntityManagerFactory emfInstance = Persistence.createEntityManagerFactory("jedp");

    private EMF() {
    }

    public static EntityManagerFactory get() {
        return emfInstance;
    }
}