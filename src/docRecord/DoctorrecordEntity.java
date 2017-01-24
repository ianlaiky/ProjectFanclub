package docRecord;

import javax.persistence.*;

/**
 * Created by Ian on 25/1/2017.
 */
@Entity
@Table(name = "doctorrecord", schema = "jedp", catalog = "")
public class DoctorrecordEntity {
    private String dusername;
    private String dPassword;
    private String dName;

    @Id
    @Column(name = "dusername", nullable = false, length = 45)
    public String getDusername() {
        return dusername;
    }

    public void setDusername(String dusername) {
        this.dusername = dusername;
    }

    @Basic
    @Column(name = "dPassword", nullable = false, length = 45)
    public String getdPassword() {
        return dPassword;
    }

    public void setdPassword(String dPassword) {
        this.dPassword = dPassword;
    }

    @Basic
    @Column(name = "dName", nullable = false, length = 45)
    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DoctorrecordEntity that = (DoctorrecordEntity) o;

        if (dusername != null ? !dusername.equals(that.dusername) : that.dusername != null) return false;
        if (dPassword != null ? !dPassword.equals(that.dPassword) : that.dPassword != null) return false;
        if (dName != null ? !dName.equals(that.dName) : that.dName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = dusername != null ? dusername.hashCode() : 0;
        result = 31 * result + (dPassword != null ? dPassword.hashCode() : 0);
        result = 31 * result + (dName != null ? dName.hashCode() : 0);
        return result;
    }
}
