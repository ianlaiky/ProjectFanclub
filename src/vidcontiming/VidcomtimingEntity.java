package vidcontiming;

import javax.persistence.*;

/**
 * Created by Ian on 4/2/2017.
 */
@Entity
@Table(name = "vidcomtiming", schema = "jedp", catalog = "")
public class VidcomtimingEntity {
    private String docUsername;
    private String patientUsername;
    private String date;
    private String startTime;
    private String endTime;
    private String id;

    public VidcomtimingEntity() {
    }

    public VidcomtimingEntity(String docUsername, String patientUsername, String date, String startTime, String endTime, String id) {
        this.docUsername = docUsername;
        this.patientUsername = patientUsername;
        this.date = date;
        this.startTime = startTime;
        this.endTime = endTime;
        this.id = id;
    }

    @Basic
    @Column(name = "docUsername", nullable = false, length = 45)
    public String getDocUsername() {
        return docUsername;
    }

    public void setDocUsername(String docUsername) {
        this.docUsername = docUsername;
    }

    @Basic
    @Column(name = "patientUsername", nullable = false, length = 45)
    public String getPatientUsername() {
        return patientUsername;
    }

    public void setPatientUsername(String patientUsername) {
        this.patientUsername = patientUsername;
    }

    @Basic
    @Column(name = "date", nullable = false, length = 45)
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Basic
    @Column(name = "startTime", nullable = false, length = 45)
    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    @Basic
    @Column(name = "endTime", nullable = false, length = 45)
    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    @Id
    @Column(name = "id", nullable = false, length = 45)
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VidcomtimingEntity that = (VidcomtimingEntity) o;

        if (docUsername != null ? !docUsername.equals(that.docUsername) : that.docUsername != null) return false;
        if (patientUsername != null ? !patientUsername.equals(that.patientUsername) : that.patientUsername != null)
            return false;
        if (date != null ? !date.equals(that.date) : that.date != null) return false;
        if (startTime != null ? !startTime.equals(that.startTime) : that.startTime != null) return false;
        if (endTime != null ? !endTime.equals(that.endTime) : that.endTime != null) return false;
        if (id != null ? !id.equals(that.id) : that.id != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = docUsername != null ? docUsername.hashCode() : 0;
        result = 31 * result + (patientUsername != null ? patientUsername.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (startTime != null ? startTime.hashCode() : 0);
        result = 31 * result + (endTime != null ? endTime.hashCode() : 0);
        result = 31 * result + (id != null ? id.hashCode() : 0);
        return result;
    }
}
