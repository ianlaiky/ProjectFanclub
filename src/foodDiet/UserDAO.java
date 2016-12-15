package foodDiet;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by Ying on 16/12/2016.
 */
public class UserDAO {
    public static int getNextUserId() {
        // declare local variables
        int userId = 0;
        ResultSet rs = null;
        DBController db = new DBController();
        String dbQuery;
        PreparedStatement pstmt;

        // step 1 - connect to database
        db.getConnection();

        // step 2 - declare the SQL statement
        dbQuery = "SELECT MAX(userId) FROM user";
        pstmt = db.getPreparedStatement(dbQuery);

        // step 3 - execute query
        try {
            rs = pstmt.executeQuery();
            if (rs.next()) { // first record found
                userId = rs.getInt(1) + 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // step 4 - close connection
        db.terminate();
        return userId;
    }

    private static User convertToUser(ResultSet rs) throws SQLException {
        User user;

        int userId = rs.getInt("userId");
        String uname= rs.getString("uname");
        int age = rs.getInt("age");
        String gender= rs.getString("gender");
        String intensity = rs.getString("intensity");
        double height = rs.getDouble("height");
        double weight = rs.getDouble("weight");
        double dailyCalories = rs.getDouble("dailyCalories");
        double dailyProtein = rs.getDouble("dailyProtein");
        double dailyCarbo = rs.getDouble("dailyCarbo");
        double dailyFat = rs.getDouble("dailyFat");
        double curCalories = rs.getDouble("curCalories");
        double curProtein = rs.getDouble("curProtein");
        double curFat = rs.getDouble("curFat");
        double curCarbo = rs.getDouble("curCarbo");




        user = new User(userId, uname, age, gender,  intensity,  height, weight, dailyCalories,  dailyProtein, dailyCarbo, dailyFat, curCalories, curProtein, curFat, curCarbo);

        return user;
    }

    public static ArrayList<User> retrieveAllUser() {
        // declare local variables
        ArrayList<User> list = new ArrayList<User>();
        ResultSet rs = null;
        DBController db = new DBController();
        String dbQuery;

        // Step 1 -connect to database
        db.getConnection();

        // step 2 - declare the SQL statement
        dbQuery = "SELECT * FROM user ";

        // step 3 - using DBControlle readRequest method
        rs = db.readRequest(dbQuery);
        try {
            while (rs.next()) {
                User user = convertToUser(rs);
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // step 4 - close connection
        db.terminate();

        return list;
    }
}
