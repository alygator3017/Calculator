package model;

/**
 * Service to Calculate the area
 * @author Alyson
 */
public class AreaCalculationService {
    private String area;
    private double a;
    /**
     * Calculates the area of a rectangle by passing in height and width.
     * height and width are converted to double and then used to calculate
     * the area in a double which is then turned back into a string to be returned.
     * @throws IllegalArgumentException
     * @param length length of rectangle
     * @param width width of rectangle
     * @return area of rectangle 
     */
    public String getRectangleArea(String length, String width) throws IllegalArgumentException{
        double l = Double.parseDouble(length);
        double w = Double.parseDouble(width);
        
        a = l * w;
        
        area = "" + a;
        
        return area;
    }
    
    public String getCircleArea(String radius) throws IllegalArgumentException{
        double r = Double.parseDouble(radius);
        
        a = Math.PI*(Math.pow(r, 2));
        
        area = "" + a;
        
        return area;
    }
    
    public String getTriangleArea(String base, String height) throws IllegalArgumentException{
        double b = Double.parseDouble(base);
        double h = Double.parseDouble(height);
        
        a = (0.5 * b * h);
        
        area = "" + a;
        
        return area;
    }
}
