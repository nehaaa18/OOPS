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
<h1><u>METHOD OVERRIDING IN JAVA</u></h1>
<p>If subclass (child class) has the same method as declared in the parent class, it is known as <b>method overriding</b> in Java.</p>
<p>In other words, If a subclass provides the specific implementation of the method that has been declared by one of its parent class, it is known as method overriding.</p>
<h4><b>Usage of Java Method Overriding</b></h4>
<ul>
<li>Method overriding is used to provide the specific implementation of a method which is already provided by its superclass.</li>
<li>Method overriding is used for runtime polymorphism.</li>
</ul>
<h4><b>Rules for Java Method Overriding:</b></h4>
<ul>
<li>The method must have the same name as in the parent class.</li>
<li>The method must have the same parameter as in the parent class.</li>
<li>There must be an IS-A relationship (inheritance).</li>
</ul>
<h4><b>Can we override static method?</b></h4>
<p>No, a static method cannot be overridden. It can be proved by runtime polymorphism, so we will learn it later.</p>
<h4><b>Why can we not override static method?</b></h4>
<p>It is because the static method is bound with class whereas instance method is bound with an object. Static belongs to the class area, and an instance belongs to the heap area.</p>

<h4><b>Can we override java main method?</b></h4>
<p>No, because the main is a static method.</p>
<br/>
<h4><b>Example :</b></h4>
<p>Let us consider two classes named OverridingDemo and OverridingClassDemo respectively. OverridingDemo class is base class which has a method named mul with two parameters which is supposed to return the product of two numbers. On the contrary the derived class which is OverridingClassDemo has a method mul but it returns the product of three numbers. Follow the code for better understanding.</p>
	<div class="row">
   <div class="col-lg-5">
<pre id="code">
public class OverridingDemo
 {
	public double mul(double a1, double a2)
	{
		return a1*a2;// returns product of two numbers
	}
}//end of class
public class OverridingClassDemo extends OverridingDemo
{
	public double mul(double a3,double a4,double a5)
	{
		return a3*a4*a5;//returns the product of three numbers
	}//end of mul
	public static void main(String args[])
	{
	  OverridingClassDemo obj=new OverridingClassDemo();
	  double v1,v2,v3;
	  obj.mul(v1,v2,v3);
	  }//end of main method
}//end of class
</pre>
</div>
<h2><b>Try It . . .</b></h2>
<div class="col-lg-3" id="formc_color">
		<form action="<%=request.getContextPath() %>/saveOverriding.do"
			method="post">
			<fieldset>
			<h5>For Multiplying : </h5>
			Enter Number 1 :<br> <input type="number" name="num1" required="required"> <br>
			Enter Number 2 :<br> <input type="number" name="num2" required="required"> <br>
			Enter Number 3 :<br> <input type="number" name="num3" required="required"> <br>
			<br>
			<input type="submit" value="submit" />
			</fieldset>
		</form>
		</div>
		 <h5>Result : ${Ovr1} </h5><br>
</div>
</div>
</div>
<script src="js/nav.js"></script>
</body>
</html>