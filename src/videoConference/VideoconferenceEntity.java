package videoConference;

import javax.persistence.*;

/**
 * Created by Ian on 22/1/2017.
 */
@Entity
@Table(name = "videoconference", schema = "jedp", catalog = "")
public class VideoconferenceEntity {
    private String username;
    private String pid;
    private String typeOfUser;

    @Id
    @Column(name = "username", nullable = false, length = 45)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "pid", nullable = false, length = 45)
    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    @Basic
    @Column(name = "typeOfUser", nullable = false, length = 45)
    public String getTypeOfUser() {
        return typeOfUser;
    }

    public void setTypeOfUser(String typeOfUser) {
        this.typeOfUser = typeOfUser;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VideoconferenceEntity that = (VideoconferenceEntity) o;

        if (username != null ? !username.equals(that.username) : that.username != null) return false;
        if (pid != null ? !pid.equals(that.pid) : that.pid != null) return false;
        if (typeOfUser != null ? !typeOfUser.equals(that.typeOfUser) : that.typeOfUser != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = username != null ? username.hashCode() : 0;
        result = 31 * result + (pid != null ? pid.hashCode() : 0);
        result = 31 * result + (typeOfUser != null ? typeOfUser.hashCode() : 0);
        return result;
    }
}
