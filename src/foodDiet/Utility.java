package foodDiet;

import java.text.DecimalFormat;

/**
 * Created by Ying on 16/12/2016.
 */
public class Utility {

    public static double calBMR(double weight, double height, int age, String gender){

        double bmr=0;
        DecimalFormat df = new DecimalFormat("##.#");
        if(gender.equalsIgnoreCase("male")){
            bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
        }else if(gender.equalsIgnoreCase("female")){
            bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;
        }
        return bmr;

    }

    public static double calCalories(double weight, double height, int age, String gender, String intensity){

        double bmr=0;
        double cal=0;
        DecimalFormat df = new DecimalFormat("##.#");
        if(gender.equalsIgnoreCase("male")){
            bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
        }else if(gender.equalsIgnoreCase("female")){
            bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;
        }
        if(intensity.equals("sedentary")){
            cal = bmr * 1.2;
        }
        return cal;

    }


}
