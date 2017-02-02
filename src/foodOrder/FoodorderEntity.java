package foodOrder;

import javax.persistence.*;

/**
 * Created by astaroh on 2/2/2017.
 */
@Entity
@Table(name = "foodorder", schema = "jedp", catalog = "")
public class FoodorderEntity {
    private int idfoodorder;
    private String foodName;
    private String foodQuantity;
    private String patientId;
    private String patientName;
    private String roomId;
    private String orderdate;


    public FoodorderEntity(int idfoodorder,String foodName,String foodQuantity,String patientId,
                           String patientName,String roomId,String orderdate){
        this.idfoodorder = idfoodorder;
        this.foodName = foodName;
        this.foodQuantity = foodQuantity;
        this.patientId = patientId;
        this.patientName = patientName;
        this.roomId = roomId;
        this.orderdate = orderdate;
    }

    public FoodorderEntity() {
    }
    @Id
    @Column(name = "idfoodorder", nullable = false)
    public int getIdfoodorder() {
        return idfoodorder;
    }

    public void setIdfoodorder(int idfoodorder) {
        this.idfoodorder = idfoodorder;
    }

    @Basic
    @Column(name = "foodName", nullable = true, length = -1)
    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    @Basic
    @Column(name = "foodQuantity", nullable = true, length = 45)
    public String getFoodQuantity() {
        return foodQuantity;
    }

    public void setFoodQuantity(String foodQuantity) {
        this.foodQuantity = foodQuantity;
    }

    @Basic
    @Column(name = "patientId", nullable = true, length = 45)
    public String getPatientId() {
        return patientId;
    }

    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }

    @Basic
    @Column(name = "patientName", nullable = true, length = 45)
    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    @Basic
    @Column(name = "roomId", nullable = true, length = 45)
    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    @Basic
    @Column(name = "orderdate", nullable = true, length = 45)
    public String getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(String orderdate) {
        this.orderdate = orderdate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        FoodorderEntity that = (FoodorderEntity) o;

        if (idfoodorder != that.idfoodorder) return false;
        if (foodName != null ? !foodName.equals(that.foodName) : that.foodName != null) return false;
        if (foodQuantity != null ? !foodQuantity.equals(that.foodQuantity) : that.foodQuantity != null) return false;
        if (patientId != null ? !patientId.equals(that.patientId) : that.patientId != null) return false;
        if (patientName != null ? !patientName.equals(that.patientName) : that.patientName != null) return false;
        if (roomId != null ? !roomId.equals(that.roomId) : that.roomId != null) return false;
        if (orderdate != null ? !orderdate.equals(that.orderdate) : that.orderdate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idfoodorder;
        result = 31 * result + (foodName != null ? foodName.hashCode() : 0);
        result = 31 * result + (foodQuantity != null ? foodQuantity.hashCode() : 0);
        result = 31 * result + (patientId != null ? patientId.hashCode() : 0);
        result = 31 * result + (patientName != null ? patientName.hashCode() : 0);
        result = 31 * result + (roomId != null ? roomId.hashCode() : 0);
        result = 31 * result + (orderdate != null ? orderdate.hashCode() : 0);
        return result;
    }
}
