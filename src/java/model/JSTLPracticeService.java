package model;

/**
 *
 * @author Alyson
 */
public class JSTLPracticeService {
    private static final String MALE = "m";
    private static final String FEMALE = "f";
    String[] doctors = {"First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eigth", "War Doctor", "Ninth", "Tenth", "Tenth", "Eleventh", "Twelfth"};

    public String getMsg(String name, String gender, String num) throws IllegalArgumentException{
        if(name.isEmpty() || gender.isEmpty() || (!gender.equalsIgnoreCase(MALE) || !gender.equalsIgnoreCase(FEMALE)) ||
                num.isEmpty()){
            throw new IllegalArgumentException();
        }
        int n = Integer.parseInt(num);
        String g = null;
        if(gender.equalsIgnoreCase(MALE)){
            g = "male";
        }else{
            g = "female";
        }
        String doc = doctors[n];
        
        String msg = name.toUpperCase() + " is a " + g + " companion of the " + doc + " doctor from Doctor Who";
        return msg;
    }
}
