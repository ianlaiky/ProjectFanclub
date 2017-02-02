package queue;

import javax.persistence.*;

/**
 * Created by aravin on 25-Jan-17.
 */
@Entity
@Table(name = "onlinequeuesystem", schema = "jedp", catalog = "")
public class OnlinequeuesystemEntity {
    private int queueNumber;
    private String patientName;

    public OnlinequeuesystemEntity() {
    }

    public OnlinequeuesystemEntity(int queueNumber, String patientName) {
        this.queueNumber = queueNumber;
        this.patientName = patientName;
    }

    @Id
    @Column(name = "queueNumber")
    public int getQueueNumber() {
        return queueNumber;
    }

    public void setQueueNumber(int queueNumber) {
        this.queueNumber = queueNumber;
    }

    @Basic
    @Column(name = "patientName")
    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OnlinequeuesystemEntity that = (OnlinequeuesystemEntity) o;

        if (queueNumber != that.queueNumber) return false;
        if (patientName != null ? !patientName.equals(that.patientName) : that.patientName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = queueNumber;
        result = 31 * result + (patientName != null ? patientName.hashCode() : 0);
        return result;
    }
}
