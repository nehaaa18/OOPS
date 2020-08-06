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
<h1><u>ABSTRACT CLASS IN JAVA</u></h1>
<p>A class which is declared as abstract is known as an <b>abstract class</b>. It can have abstract and non-abstract methods. It needs to be extended and its method implemented. It cannot be instantiated.</p>
<h4>Points to Remember :</h4>
<ul>
<li>An abstract class must be declared with an abstract keyword.</li>
<li>It can have abstract and non-abstract methods.</li>
<li>It cannot be instantiated.</li>
<li>It can have constructors and static methods also.</li>
<li>It can have final methods which will force the subclass not to change the body of the method.</li>
</ul>
<h4>Example of abstract class :</h4>
<p>abstract class A{}  </p>
<h4>Abstract method in Java :</h4>
<p>A method which is declared as abstract and does not have implementation is known as an abstract method.</p>
<p><b>Example of abstract method :</b></p>
<p>abstract void printStatus();//no method body and abstract  </p>
<h4><b>Example :</b></h4>
<p>Let us consider two classes named AbstractDemo1 and AbstractDemo2 where the first one being the base class and the second one being the derived class. The base class has abstract mthod definition which is implemented in the derived class. Follow the code to understand better. </p>
<div class="row">
   <div class="col-lg-5">
<pre id="code">
public abstract class AbstractDemo1 
{
  abstract double multiply_two(double a, double b);//abstract method definition
}//end of class
public class AbstractDemo2 extends AbstractDemo1
{
  public double multiply_two(double a,double b)
  {
	return a*b;
  }
  public static void main(String args[])
  {
     double a1,a2;
    AbstractDemo2 obj=new AbstractDemo2();//object creation
    obj.multiply_two(a1,a2);//method call
}//end of class
</pre>
</div>
<h2><b>Try It . . .</b></h2>
<div class="col-lg-5"  id="formc_color">
		<form action="<%=request.getContextPath() %>/saveAbstract.do"
			method="post">
			<fieldset>
			<p>To multiply two numbers :</p>
			Enter Num1 :<br> <input type="number" name="n1" required="required"> <br>
			Enter Num2 :<br> <input type="number" name="n2" required="required"> <br>
			<input type="submit" value="submit" name="Submitab"/>
			</fieldset>
		</form>
		</div>
<p>Result : ${Abs1}</p><br/>
</div>
</div>
</div>
<script src="js/nav.js"></script>
</body>
</html>