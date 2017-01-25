package queue;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by aravin on 25-Jan-17.
 */
@Entity
@Table(name = "onlinequeuesystem", schema = "jedp", catalog = "")
public class OnlinequeuesystemEntity {
    private int queueNumber;

    @Id
    @Column(name = "queueNumber")
    public int getQueueNumber() {
        return queueNumber;
    }

    public void setQueueNumber(int queueNumber) {
        this.queueNumber = queueNumber;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OnlinequeuesystemEntity that = (OnlinequeuesystemEntity) o;

        if (queueNumber != that.queueNumber) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return queueNumber;
    }
}
