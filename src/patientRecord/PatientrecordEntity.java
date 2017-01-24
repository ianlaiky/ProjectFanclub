package patientRecord;

import javax.persistence.*;

/**
 * Created by Ian on 25/1/2017.
 */
@Entity
@Table(name = "patientrecord", schema = "jedp", catalog = "")
public class PatientrecordEntity {
    private String pUsername;
    private String pPassword;
    private String pName;

    @Id
    @Column(name = "pUsername", nullable = false, length = 45)
    public String getpUsername() {
        return pUsername;
    }

    public void setpUsername(String pUsername) {
        this.pUsername = pUsername;
    }

    @Basic
    @Column(name = "pPassword", nullable = false, length = 45)
    public String getpPassword() {
        return pPassword;
    }

    public void setpPassword(String pPassword) {
        this.pPassword = pPassword;
    }

    @Basic
    @Column(name = "pName", nullable = false, length = 45)
    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PatientrecordEntity that = (PatientrecordEntity) o;

        if (pUsername != null ? !pUsername.equals(that.pUsername) : that.pUsername != null) return false;
        if (pPassword != null ? !pPassword.equals(that.pPassword) : that.pPassword != null) return false;
        if (pName != null ? !pName.equals(that.pName) : that.pName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = pUsername != null ? pUsername.hashCode() : 0;
        result = 31 * result + (pPassword != null ? pPassword.hashCode() : 0);
        result = 31 * result + (pName != null ? pName.hashCode() : 0);
        return result;
    }
}
