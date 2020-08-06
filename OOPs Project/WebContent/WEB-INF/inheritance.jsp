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
    font-family: 'Comic sans MS';font-size: 22px;
}
p    {color: black;}

h1 {
  
  text-align: center;
}
h1
{color:  #002080
}
#formc_color
{
border:1px solid black;
background-color: #F5F5F5;
}
h4
{color:#8080ff
}
u { 
  text-decoration: underline;
}

</style>
</head>
<body>
<hr>
  <div class="row">
   <div class="col-lg-2">
<div class="vertical-menu">
 <%@ include file="menu.html"%> 
</div>
</div>
<div class="col-lg-9">
<h1><u>INHERITANCE IN JAVA</u></h1>
<p>
<b>Inheritance</b> in Java is a mechanism in which one object acquires all the properties and behaviors of a parent object. It is an important part of OOPs (Object Oriented programming system).
The idea behind inheritance in Java is that you can create new classes that are built upon existing classes. When you inherit from an existing class, you can reuse methods and fields of the parent class. Moreover, you can add new methods and fields in your current class also.
Inheritance represents the IS-A relationship which is also known as a parent-child relationship.</p>

<h4>Why use inheritance in java?</h4>
<ul>
<li>For Method Overriding (so runtime polymorphism can be achieved).</li>
<li>For Code Reusability.</li>
</ul>
<h4>Terms used in Inheritance:</h4>
<ul>
<li><b>Class</b>: A class is a group of objects which have common properties. It is a template or blueprint from which objects are created.</li>
<li><b>Sub Class/Child Class</b>: Subclass is a class which inherits the other class. It is also called a derived class, extended class, or child class.</li>
<li><b>Super Class/Parent Class</b>: Superclass is the class from where a subclass inherits the features. It is also called a base class or a parent class.</li>
<li><b>Reusability</b>: As the name specifies, reusability is a mechanism which facilitates you to reuse the fields and methods of the existing class when you create a new class. You can use the same fields and methods already defined in the previous class.</li>
</ul>
<p>The syntax of Java Inheritance:</p>
<p>class Subclass-name extends Superclass-name</p>
<p>{ </p> 
   <p>//methods and fields  </p>
<p>} </p>
<p> 
The <b>extends</b> keyword indicates that you are making a new class that derives from an existing class. The meaning of "extends" is to increase the functionality.
In the terminology of Java, a class which is inherited is called a parent or superclass, and the new class is called child or subclass.
</p>
<br/>
<h4>There are five types of inheritance :</h4>
<ul>
<li><b>Single Inheritance:</b>When subclasses inherits only one super class is called Single Inheritance.</li>
<li><b>Multilevel Inheritance:</b>In Multilevel Inheritance a derived class will be inheriting a base class and as well as the derived class also act as the base class to other class.</li>
<li><b>Multiple Inheritance:</b>In Multiple inheritance one class can have more than one superclass and inherit features from all parent classes. Please note that Java does not support multiple inheritance with classes. In java, we can achieve multiple inheritance only through Interfaces.</li>
<li><b>Hierarchial Inheritance:</b>In Hierarchical Inheritance one class serves as a superclass (base class) for more than one sub class.</li>
<li><b>Hybrid Inheritance:</b>It is a mix of two or more of the above types of inheritance. Since java doesnot support multiple inheritance with classes the hybrid inheritance is also not possible with classes. In java we can achieve hybrid inheritance only through Interfaces.</li>
</ul>
<img src="Types_Of_Inhertiance_In_Java.jpg">
<h4><b>Example:</b></h4>
<p> Let us take two classes for instance a class named InheritanceDemo and another class named SecondClass which extends the InheritanceDemo class. Let the base class has one variable named a1 and the derived class has a variable a2. The below program will print the value of these variables as fed by user by creating the object of derived class.</p>
	<div class="row">
     <div class="col-lg-5">
       <pre id="code">

public class InheritanceDemo 
{
	int a1;
	//Using getter and Setter Methods
	 public void setVar1(int a1)
	    {
	        this.a1=a1;
	    }//end of setVar1 method
	 public int getVar1()
	    {
	        return a1;
	    }//end of getVar1method
	    
}//end of class
public class SecondClass extends InheritanceDemo 
{
   int a2;
   //using getter and setter methods
   public void setVar2(int a2)
   {
       this.a2=a2;
   }//end of setVar2
   public int getVar2()
   {
       return a2;
   }//end of getVar2
	public static void main(String args[]) 
    {
	   SecondClass obj= new  SecondClass();
	   obj.getVar1();
	   obj.getVar2();
	   System.out.println("The value of variable 1 is:"+a1);
	   System.out.println("The value of variable 1 is:"+a2);
	  }//end of main method
 }//end of class
</pre>
</div>

	<h2><b>Try It . . .</b> </h2>
	<div class="col-lg-5" id="formc_color">
		<form action="<%=request.getContextPath() %>/saveInheriData.do"
			method="post">
			<fieldset>
			<h5>Base Class Method Call:</h5>
			Enter Variable 1:<br> <input type="number" name="var1" required="required"> <br>
			</fieldset>
			<fieldset>
			<h5>Derived Class Method Call:</h5>
			Enter Variable 2:<br> <input type="number" name="var2" required="required"> <br>
	
			<input type="submit" value="submit" />
			</fieldset>
		</form>
		</div>
		<h5>Result:</h5>
		 Variable 1: ${InhObj1} <br>
  		 Variable 2: ${InhObj2}

</div>
</div>
</div>
<script src="js/nav.js"></script>
</body>
</html>
