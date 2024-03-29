package foodDiet;

/**
 * Created by Ying on 16/12/2016.
 */
public class User {
    private int userId;
    private String uname;
    private int age;
    private String gender;
    private String intensity;
    private int uheight;
    private double weight;
    private double dailyCalories;
    private double dailyProtein;
    private double dailyCarbo;
    private double dailyFat;
    private double curCalories;
    private double curProtein;
    private double curFat;
    private double curCarbo;


    public User(int userId) {
        this.userId = userId;
    }

    public User(int userId, String uname, int age, String gender, String intensity, int uheight, double weight, double dailyCalories, double dailyProtein, double dailyCarbo, double dailyFat, double curCalories, double curProtein, double curFat, double curCarbo) {
        this.userId = userId;
        this.uname = uname;
        this.age = age;
        this.gender = gender;
        this.intensity = intensity;
        this.uheight = uheight;
        this.weight = weight;
        this.dailyCalories = dailyCalories;
        this.dailyProtein = dailyProtein;
        this.dailyCarbo = dailyCarbo;
        this.dailyFat = dailyFat;
        this.curCalories = curCalories;
        this.curProtein = curProtein;
        this.curFat = curFat;
        this.curCarbo = curCarbo;
    }


    public User( double dailyCalories, double dailyProtein, double dailyCarbo, double dailyFat) {
        this.dailyCalories = dailyCalories;
        this.dailyProtein = dailyProtein;
        this.dailyCarbo = dailyCarbo;
        this.dailyFat = dailyFat;
    }
    public User(String uname, int age, String gender, String intensity, int uheight, double weight) {
        this.uname = uname;
        this.age = age;
        this.gender = gender;
        this.intensity = intensity;
        this.uheight = uheight;
        this.weight = weight;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getIntensity() {
        return intensity;
    }

    public void setIntensity(String intensity) {
        this.intensity = intensity;
    }

    public int getHeight() {
        return uheight;
    }

    public void setHeight(int uheight) {
        this.uheight = uheight;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getDailyCalories() {
        return dailyCalories;
    }

    public void setDailyCalories(double dailyCalories) {
        this.dailyCalories = dailyCalories;
    }

    public double getDailyProtein() {
        return dailyProtein;
    }

    public void setDailyProtein(double dailyProtein) {
        this.dailyProtein = dailyProtein;
    }

    public double getDailyCarbo() {
        return dailyCarbo;
    }

    public void setDailyCarbo(double dailyCarbo) {
        this.dailyCarbo = dailyCarbo;
    }

    public double getDailyFat() {
        return dailyFat;
    }

    public void setDailyFat(double dailyFat) {
        this.dailyFat = dailyFat;
    }

    public double getCurCalories() {
        return curCalories;
    }

    public void setCurCalories(double curCalories) {
        this.curCalories = curCalories;
    }

    public double getCurProtein() {
        return curProtein;
    }

    public void setCurProtein(double curProtein) {
        this.curProtein = curProtein;
    }

    public double getCurFat() {
        return curFat;
    }

    public void setCurFat(double curFat) {
        this.curFat = curFat;
    }

    public double getCurCarbo() {
        return curCarbo;
    }

    public void setCurCarbo(double curCarbo) {
        this.curCarbo = curCarbo;
    }
}
