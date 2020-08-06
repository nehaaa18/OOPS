package java.com;

public class Overloading 
{
	public double area(double a)
	{
		return (3.14*a*a);//returns area of a circle
		
	}
	public  double area(double l,double b)
	{
		return (l*b);//returns area of a rectangle
	}
	public  int area(int side)
	{
		return (side*side);//returns area of a square
	}
	public  double area(int base,int height)
	{
		return (0.5*base*height);//returns area of a triangle
	}
 }//end of class

