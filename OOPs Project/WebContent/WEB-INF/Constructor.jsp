<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

 <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/stylesheet.css">
<style>
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
body {
    font-family: 'Comic Sans MS';font-size: 22px;
}
p    {color: black;}

h1 {
  
  text-align: center;
}
h4
{color:#8080ff
}
u { 
  text-decoration: underline;
}
#formc_color
{
border:1px solid black;
background-color: #F5F5F5;
}
h1
{color:  #002080
}
</style>
</head>
<body>
  <div class="row">
   <div class="col-lg-2">
<div class="vertical-menu">
 <%@ include file="menu.html"%> 
</div>
</div>
<div class="col-lg-9">
<h1><u>CONSTRUCTOR OVERLOADING</u></h1>
<p>Like methods constructors can also be overloaded. In this guide we will see Constructor overloading with the help of examples. Before we proceed further let us understand what is constructor overloading and why we do it.</p>

<p>Constructor overloading is a concept of having more than one constructor with different parameters list in such a way so that each constructor performs a different task. For eg Vector class has 4 types of constructors. If you do not want to specify the initial capacity and capacity increment then you can simply use default constructor of Vector class like this Vector v = new Vector(); however if you need to specify the capacity and increment then you call the parameterized constructor of Vector class with two int arguments like this: Vector v= new Vector(10, 5);
</p>
<h4><b>Example :</b></h4>
<p>Let us consider a class named ConstructorOverloadingDemo which has two constructors namely <b>Default Constructor</b> which sets default values to the data members and there is <b>Parameterised Constructor</b> which takes parameters from the user and then sets the value of the data members. </p>
<div class="row">
   <div class="col-lg-5" >
<pre id="code">

public class ConstructorOverloadingDemo
 {
   	private int stuID; // data members being declared
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
	 
}//end of class
</pre>
</div>
<div class="col-lg-7" id="formc_color" style="border: 1px solid black" >
<h2><b>Try It . . .</b></h2>
<div style="border: 1px solid black">
		<form action="<%=request.getContextPath() %>/saveConstructor.do"
			method="post">
			<fieldset>
			<h5>Parameterised Constructor Call:</h5>
			Enter Student ID:<br> <input type="number" name="num1" required="required"> <br>
			Enter Student Name:<br> <input type="text" name="num2" required="required"> <br>
			Enter Student Age:<br> <input type="number" name="num3" required="required"> <br>
			<input type="submit" value="submit" /><br>
			</fieldset>
			</form>
			</div>	
			<h3><b>Result:</b></h3>
			<h5>Default Constructor :</h5>
		   <h5>Student ID : ${ID}</h5>
  		   <h5>Student Name : ${Name}</h5>
  		    <h5>Student Age:  ${Age} </h5>
			<h5>Parameterised Constructor:</h5>
			<h5>Student ID : ${pob4}</h5>
  		   <h5> Student Name : ${pob5}</h5>
  		    <h5>Student Age:  ${pob6} </h5>
</div>
</div>
</div>
<script src="js/nav.js"></script>
</body>
</html>