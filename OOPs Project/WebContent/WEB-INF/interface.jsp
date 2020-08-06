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
<h1><u>INTERFACE IN JAVA</u></h1>
<p><b>Interface</b> in Java is a collection of abstract methods and static constants. As you might know in an interface, each method is public and abstract but it does not contain any constructor. Along with abstraction, the interface also helps to achieve multiple inheritance in Java.
Note: You can achieve 100% abstraction using interfaces.</p>
<p>Basically, Interface is a group of related methods with empty bodies. Let us understand interfaces by taking an example of a Shape interface with its related methods.
<br>public interface shape{
<br>public void draw();
<br>public double getArea();
<br>}
<p>These methods need to be present in every shape right? But their working is going to be different.</p>

<p>Let us assume that you want to draw a shape , say circle, square, rectangle etc. You already know, each shape possess its own dimensions like radius, height, and width. Say I want to draw a circle and calculate its area. Considering the same, I have created two methods in the above code i.e. draw() and getArea(). Now, using these methods, I can draw any shape and calculate the area by implementing its interface.</p>
<p>Now, let us look into the functionality as to how you can implement this interface.</p>
<p>In order to implement this interface, the name of your class would change to any of the Shape, let us say <b>Circle</b>. So, to implement the class interface,  will make use of <b>implement</b> keyword:</p>

<p>Like a class, an interface can have methods and variables, but the methods declared in interface are by default abstract (only method signature, no body).</p>
<ul>
<li>Interfaces specify what a class must do and not how. It is the blueprint of the class.</li>
<li>An Interface is about capabilities like a Player may be an interface and any class implementing Player must be able to (or must implement) move(). So it specifies a set of methods that the class has to implement.</li>
<li>If a class implements an interface and does not provide method bodies for all functions specified in the interface, then class must be declared abstract.</li>
<li>A Java library example is, Comparator Interface. If a class implements this interface, then it can be used to sort a collection.</li>
</ul>
<h4><b>Syntax :</b></h4>

<p>interface interface_name </p> 
<p>{</p>
    
 <p>   // declare constant fields</p>
    <p>// declare methods that abstract </p>
  <p>  // by default.</p>
<p>}</p>

<p>To declare an interface, use <b>interface</b> keyword. It is used to provide <b>total abstraction</b>. That means all the methods in interface are declared with empty body and are public and all fields are public, static and final by default. A class that implement interface must implement all the methods declared in the interface. <b>To implement interface use implements keyword.</b>

<h4><b>Why do we use interface ?</b></h4>
<ul>
<li>It is used to achieve total abstraction.</li>
<li>Since java does not support multiple inheritance in case of class, but by using interface it can achieve multiple inheritance .</li>
<li>It is also used to achieve loose coupling.</li>
<li>Interfaces are used to implement abstraction. So the question arises why use interfaces when we have abstract classes?<br>
The reason is, abstract classes may contain non-final variables, whereas variables in interface are final, public and static.</li>
</ul>
<p>// A simple interface <p>
<p>interface Player </p>
<p>{ </p>
    <p>final int id = 10; </p>
    <p>int move(); </p>
<p>}</p> 
<h4><b>Example :</b></h4>
<p>Let us consider one interface named InterfaceDemo1 and one class named InterfaceDemo2 which implements the interface. In the Interface interface we have defined abstract and non-abstract method definition. In the Inter1 class we have written the body of the abstract and non-abstract methods already defined in Interface interface. When we create object of Inter1 class, we get the product from the multiply_two() and multiply_three() methods.</p>
<div class="row">
<div class="col-lg-5">
<pre id="code">
public interface InterfaceDemo1  {
	abstract double multiply_two(double a, double b);//abstract method definition
	public double multiply_three(double a,double b,double c);//non-abstract method definition
}//end of interface
public class InterfaceDemo2 implements InterfaceDemo1
{
	public double multiply_two(double a,double b) 
	{
		return a*b;//returns product of two numbers
	}
	public double multiply_three(double a,double b,double c) 
	{
		return a*b*c;//returns product of three numbers
	}
	public static void main(String args[])
	{
	   InterfaceDemo2 obj=new Interface();//object creation
	   double v1,v2,v3;
	   obj.multiply_two(v1,v2);//method call
	   obj.multiply_three(v1,v2,v3);
}//end of class
</pre>
</div>
<div class="col-lg-7" id="formc_color" style="border: 1px solid black" >
<h2><b>Try It . . .</b></h2>
<div style="border: 1px solid black">
		<form action="<%=request.getContextPath() %>/saveInterface.do"
			method="post">
			<fieldset>
			<p>To multiply two numbers:</p>
			Enter Num1 :<br> <input type="number" name="n1" required="required"> <br>
			Enter Num2 :<br> <input type="number" name="n2" required="required"> <br>
			<input type="submit" value="submit" name="Submit1"/>
			</fieldset>
		</form>
		
<p>Result: ${Inter1}</p>
</div>
<br>
<div style="border: 1px solid black">
		<form action="<%=request.getContextPath() %>/saveInterface.do"
			method="post">
			<fieldset>
			<p>To multiply three numbers:</p>
			Enter Number1 :<br> <input type="number" name="n3" required="required"> <br>
			Enter Number2 :<br> <input type="number" name="n4" required="required"> <br>
			Enter Number2 :<br> <input type="number" name="n5" required="required"> <br>
			<input type="submit" value="submit" name="Submit2" />
			</fieldset>
		</form>
		
<p>Result: ${Inter2}</p>
</div>
<br>
</div>
</div>
</div>
</div>
<script src="js/nav.js"></script>
</body>
</html>