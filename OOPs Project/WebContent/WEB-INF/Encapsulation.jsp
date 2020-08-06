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
<hr>
  <div class="row">
   <div class="col-lg-2">
<div class="vertical-menu">
 <%@ include file="menu.html"%> 
</div>
</div>

<div class="col-lg-9">
<h1><u>ENCAPSULATION IN JAVA</u></h1>
<p>
<b>Encapsulation</b> is defined as the wrapping up of data under a single unit. It is the mechanism that binds together code and the data it manipulates.Other way to think about encapsulation is, it is a protective shield that prevents the data from being accessed by the code outside this shield.
Technically in encapsulation, the variables or data of a class is hidden from any other class and can be accessed only through any member function of own class in which they are declared.
As in encapsulation, the data in a class is hidden from other classes, so it is also known as <b>data-hiding</b>.</p>
<img src="en.jpg">
<p>
Encapsulation can be achieved by: Declaring all the variables in the class as private and writing public methods in the class to set and get the values of variables.
</p><br/>
<h4>Advantages of Encapsulation:</h4>
<ol>
<li><b>Data Hiding:</b> The user will have no idea about the inner implementation of the class. It will not be visible to the user that how the class is storing values in the variables. He only knows that we are passing the values to a setter method and variables are getting initialized with that value.</li>
<li><b>Increased Flexibility:</b> We can make the variables of the class as read-only or write-only depending on our requirement. If we wish to make the variables as read-only then we have to omit the setter methods like setName(), setAge() etc. from the above program or if we wish to make the variables as write-only then we have to omit the get methods like getName(), getAge() etc. from the above
program</li>
<li><b>Reusability:</b> Encapsulation also improves the re-usability and easy to change with new requirements.</li>
<li><b>Testing code is easy:</b> Encapsulated code is easy to test for unit testing.</li>
</ol>
<h4><b>Example :</b></h4>
<p> Let us consider a class Encapsulation which takes two data members namely name of type String and marks of type integer which are declared as private. We will use getter and setter methods to set and get these values. Go through the java code below to understand better.</p>
<div class="row">
<div class="col-lg-5">
<pre id="code">
public class Encapsulation 
{
	String name;
	int marks;
	 public void setName(String name)
	    {
	        this.name=name;
	    }//end of method setName
	    
	    public void setMarks(int marks)
	    {
	        this.marks=marks;
	    }//end of method setMarks
	    
	    public String getName()
	    {
	        return name;
	    } //end of method getName
	    
	    public int getMarks()
	    {
	        return marks;
	    }//end of method getMarks
	    
	    public static void main(String args[]) 
	    {
	     Encapsulation obj= new Encapsulation();//object creation
	     obj.getName();/*method
	     obj.getMarks(); call*/
	     System.out.println("The name of the student is:"+name);
	     System.out.println("The marks obtained by the student is:"+marks);
	     }//end of main
}// end of class
</pre>
</div>
<h2>Try It . . .</h2>
<div class="col-lg-5" id="formc_color">
		<form action="<%=request.getContextPath() %>/saveEncData.do" method="post">
		<fieldset>
		Enter Name:<br> <input type="text" name="name" required="required"> <br>
		Enter Marks:<br> <input type="text" name="marks" required="required"> <br>
		<br>
		<input type="submit" value="submit" />
		</fieldset>
		</form>
		</div>
		<h3>Result:</h3>
		 Name: ${EnObj.name} <br>
  		 Marks: ${EnObj.marks}
</div>
</div>
</div>
<script src="js/nav.js"></script>
</body>
</html>