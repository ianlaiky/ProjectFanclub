package visitorBooking;

import javax.persistence.*;

/**
 * Created by Ian on 3/2/2017.
 */
@Entity
@Table(name = "visitorbooking", schema = "jedp", catalog = "")
public class VisitorbookingEntity {
    private String firstName;
    private String nric;
    private String date;
    private String time;
    private String phone;
    private String email;
    private String relativeNric;
    private String patientName;
    private String roomNo;
    private String visitorBookingcol;
    private String username;

    @Basic
    @Column(name = "firstName", nullable = false, length = 45)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "nric", nullable = false, length = 45)
    public String getNric() {
        return nric;
    }

    public void setNric(String nric) {
        this.nric = nric;
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
    @Column(name = "time", nullable = false, length = 45)
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Basic
    @Column(name = "phone", nullable = false, length = 45)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "email", nullable = false, length = 45)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "relativeNric", nullable = false, length = 45)
    public String getRelativeNric() {
        return relativeNric;
    }

    public void setRelativeNric(String relativeNric) {
        this.relativeNric = relativeNric;
    }

    @Basic
    @Column(name = "patientName", nullable = false, length = 45)
    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    @Basic
    @Column(name = "roomNo", nullable = false, length = 45)
    public String getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(String roomNo) {
        this.roomNo = roomNo;
    }

    @Basic
    @Column(name = "visitorBookingcol", nullable = false, length = 45)
    public String getVisitorBookingcol() {
        return visitorBookingcol;
    }

    public void setVisitorBookingcol(String visitorBookingcol) {
        this.visitorBookingcol = visitorBookingcol;
    }

    @Id
    @Column(name = "username", nullable = false, length = 45)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VisitorbookingEntity that = (VisitorbookingEntity) o;

        if (firstName != null ? !firstName.equals(that.firstName) : that.firstName != null) return false;
        if (nric != null ? !nric.equals(that.nric) : that.nric != null) return false;
        if (date != null ? !date.equals(that.date) : that.date != null) return false;
        if (time != null ? !time.equals(that.time) : that.time != null) return false;
        if (phone != null ? !phone.equals(that.phone) : that.phone != null) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (relativeNric != null ? !relativeNric.equals(that.relativeNric) : that.relativeNric != null) return false;
        if (patientName != null ? !patientName.equals(that.patientName) : that.patientName != null) return false;
        if (roomNo != null ? !roomNo.equals(that.roomNo) : that.roomNo != null) return false;
        if (visitorBookingcol != null ? !visitorBookingcol.equals(that.visitorBookingcol) : that.visitorBookingcol != null)
            return false;
        if (username != null ? !username.equals(that.username) : that.username != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = firstName != null ? firstName.hashCode() : 0;
        result = 31 * result + (nric != null ? nric.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (relativeNric != null ? relativeNric.hashCode() : 0);
        result = 31 * result + (patientName != null ? patientName.hashCode() : 0);
        result = 31 * result + (roomNo != null ? roomNo.hashCode() : 0);
        result = 31 * result + (visitorBookingcol != null ? visitorBookingcol.hashCode() : 0);
        result = 31 * result + (username != null ? username.hashCode() : 0);
        return result;
    }
}
