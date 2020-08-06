package java.com;

public class ConstructorOverloadingDemo {
	private int stuID;
	private   String stuName;
	 private  int stuAge;
	   public ConstructorOverloadingDemo()
	   {
	       //Default constructor
	       stuID = 100;
	       stuName = "New Student";
	       stuAge = 18;
	   }
	   public ConstructorOverloadingDemo(int num1, String str, int num2)
	   {
	       //Parameterized constructor
	       stuID = num1;
	       stuName = str;
	       stuAge = num2;
	   }
	   //Getter and setter methods
	   public void setStuID(int stuID) {
	       this.stuID = stuID;
	   }
	   public int getStuID() {
	       return stuID;
	   }
	   public void setStuName(String stuName) {
	       this.stuName = stuName;
	   }
	   
	   public String getStuName() {
	       return stuName;
	   }
	   public void setStuAge(int stuAge) {
	       this.stuAge = stuAge;
	   }

	  
	   public int getStuAge() {
	       return stuAge;
	   }
	 
}

