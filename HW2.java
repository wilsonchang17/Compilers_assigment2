import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class HW2 {
    public static void main(String[] args) {
        //read csv
        File file = new File("/Users/yujie/Desktop/programing assignment_2/HW2data.csv");
        List<List<String>> data = new ArrayList<>(); //store file data
        Scanner inputStream;
        try {
            inputStream = new Scanner(file);
            while (inputStream.hasNext()) {
                String line = inputStream.next();
                String[] values = line.split(",");
                data.add(Arrays.asList(values));
            }
            inputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        //caculate scores
        ArrayList<Double> score = new ArrayList<>();
        for(int i = 1; i < data.size(); i++){
            score.add(Float.parseFloat(data.get(i).get(3))*0.1+
                    Float.parseFloat(data.get(i).get(4))*0.1+
                    Float.parseFloat(data.get(i).get(5))*0.1+
                    Float.parseFloat(data.get(i).get(6))*0.3+
                    Float.parseFloat(data.get(i).get(7))*0.4);
        }
        //transfer scores to grades
        ArrayList<String> grade = new ArrayList<>();
        for(int i = 0; i < score.size(); i++){
            if(score.get(i) >= 89.5){
                grade.add("A+");
            } 
            else if(score.get(i) >= 84.5) {
                grade.add(" A");
            } 
            else if(score.get(i) >= 79.5) {
                grade.add("A-");
            }
            else if(score.get(i) >= 76.5) {
                grade.add("B+");
            }
            else if(score.get(i) >= 72.5) {
                grade.add(" B");
            }
            else if(score.get(i) >= 69.5) {
                grade.add("B-");
            }
            else if(score.get(i) >= 66.5) {
                grade.add("C+");
            }
            else if(score.get(i) >= 62.5) {
                grade.add(" C");
            } 
            else if(score.get(i) >= 59.5) {
                grade.add("C-");
            } 
            else if(score.get(i) >= 49.5) {
                grade.add(" D");
            } 
            else{
                grade.add(" E");
            }
        }
        //if ID != 10, ID += " ", to make it align.
        ArrayList<String> ID = new ArrayList<>();
        for(int i = 1; i < score.size() + 1; i++){
            if(i != 10){
                String temp = "";
                temp = " " + data.get(i).get(0);
                ID.add(temp);
            }
            else{
                ID.add(data.get(i).get(0));
            }
        }
        //make the string of names, original scores each have 8 character to align
        ArrayList<String> NAME = new ArrayList<>();
        ArrayList<String> HW1 = new ArrayList<>();
        ArrayList<String> HW2 = new ArrayList<>();
        ArrayList<String> HW3 = new ArrayList<>();
        ArrayList<String> HWM = new ArrayList<>();
        ArrayList<String> HWF = new ArrayList<>();
        for(int i = 1; i < score.size() + 1; i++){
            if(data.get(i).get(2).length() < 8){
                String tmp = data.get(i).get(2),
                    temp1 = data.get(i).get(3),
                    temp2 = data.get(i).get(4),
                    temp3 = data.get(i).get(5),
                    tempM = data.get(i).get(6),
                    tempF = data.get(i).get(7);
                while(tmp.length() < 8){
                    tmp = " " + tmp;
                }
                while(temp1.length() < 8){
                    temp1 = " " + temp1;
                }
                while(temp2.length() < 8){
                    temp2 = " " + temp2;
                }
                while(temp3.length() < 8){
                    temp3 = " " + temp3;
                }
                while(tempM.length() < 8){
                    tempM = " " + tempM;
                }
                while(tempF.length() < 8){
                    tempF = " " + tempF;
                }
                NAME.add(tmp);
                HW1.add(temp1);
                HW2.add(temp2);
                HW3.add(temp3);
                HWM.add(tempM);
                HWF.add(tempF);
            }
            else{
                NAME.add(data.get(i).get(2));
                HW1.add(data.get(i).get(3));
                HW2.add(data.get(i).get(4));
                HW3.add(data.get(i).get(5));
                HWM.add(data.get(i).get(6));
                HWF.add(data.get(i).get(7));
            }
        }
        // print
        System.out.println("NO        ID    Name     HW1     HW2     HW3 Midterm   Final   Score   Grade");
        for(int i = 0; i < score.size(); i++){
            System.out.print(ID.get(i) + " " + data.get(i+1).get(1) + NAME.get(i) + 
                            HW1.get(i) + HW2.get(i) + HW3.get(i) + HWM.get(i) + HWF.get(i));
            System.out.printf("   %.2f      ",score.get(i));
            System.out.println(grade.get(i));
        }
    }
}