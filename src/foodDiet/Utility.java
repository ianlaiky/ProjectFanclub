package foodDiet;

import java.text.DecimalFormat;

/**
 * Created by Ying on 16/12/2016.
 */
public class Utility {

    private static DecimalFormat dfCal = new DecimalFormat("##");
    private static DecimalFormat dfNutrient = new DecimalFormat("##.#");
 /*
    public static double calBMR(double weight, double height, int age, String gender){

        double bmr=0;
        DecimalFormat df = new DecimalFormat("##.#");
        if(gender.equalsIgnoreCase("male")){
            bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
        }else if(gender.equalsIgnoreCase("female")){
            bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;
        }
        return bmr;

    } */

    public static double calCalories(double weight, int height, int age, String gender, String intensity){

        double bmr=0;
        double cal=0;
        if(gender.equalsIgnoreCase("male")){
            bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
        }else if(gender.equalsIgnoreCase("female")){
            bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;
        }
        if(intensity.equals("sedentary")){
            cal = bmr * 1.2;
        }else if (intensity.equals("moderate")){
            cal = bmr * 1.55;
        } else if (intensity.equals("active")){
            cal = bmr * 1.725;
        }
        cal  = Double.parseDouble(dfCal.format(cal));
        return cal;

    }

    public static double calProtein(double weight, int height, int age, String gender, String intensity){
        double protein =0;
        protein = calCalories(weight,height,age,gender,intensity) * 0.25;
        protein = convertProteinCalToGrams(protein);
        protein  = Double.parseDouble(dfNutrient.format(protein));
        return protein;
    }
    public static double calCarbo(double weight, int height, int age, String gender, String intensity){
        double carbo =0;
        carbo = calCalories(weight,height,age,gender,intensity) * 0.55;
        carbo = convertCarboCalToGrams(carbo);
        carbo  = Double.parseDouble(dfNutrient.format(carbo));
        return carbo;
    }
    public static double calFat(double weight,int height, int age, String gender ,String intensity){
        double fat =0;
        fat = calCalories(weight,height,age,gender,intensity) * 0.2;
        fat = convertFatCalToGrams(fat);
        fat  = Double.parseDouble(dfNutrient.format(fat));
        return fat;
    }

    public static double convertProteinCalToGrams(double protein){
        protein = protein / 4;
        return protein;
    }
    public static double convertCarboCalToGrams(double carbo){
        carbo = carbo / 4;
        return carbo;
    }
    public static double convertFatCalToGrams(double fat){
        fat = fat / 9;
        return fat;
    }

}
