<!DOCTYPE HTML >
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
    font-family: 'Sofia';font-size: 22px;
}
p    {color: black;}

h1 {
  
  text-align: center;
}
</style>
</head>
<body style="background:url(bk2.png);background-repeat:no-repeat;background-size:100% 100% ;height:800px;background-attachment:fixed">

<h1 align="center">Oops Properties</h1>
<hr>

  <div class="row">
   <div class="col-lg-2">
<div class="vertical-menu">
 <%@ include file="menu.html"%> 
</div>
</div>
<div class="col-lg-9">
<h1>ENCAPSULATION IN JAVA</h1>


<p>
<b>Encapsulation</b> is defined as the wrapping up of data under a single unit. It is the mechanism that binds together code and the data it manipulates.Other way to think about encapsulation is, it is a protective shield that prevents the data from being accessed by the code outside this shield.
Technically in encapsulation, the variables or data of a class is hidden from any other class and can be accessed only through any member function of own class in which they are declared.
As in encapsulation, the data in a class is hidden from other classes, so it is also known as <b>data-hiding</b>.</p>
<img src="en.jpg">
<p>
Encapsulation can be achieved by: Declaring all the variables in the class as private and writing public methods in the class to set and get the values of variables.
</p>
	<br/>
	
	
<h2>Advantages of Encapsulation:</h2>
<ol>
<li><b>Data Hiding:</b> The user will have no idea about the inner implementation of the class. It will not be visible to the user that how the class is storing values in the variables. He only knows that we are passing the values to a setter method and variables are getting initialized with that value.</li>
<li><b>Increased Flexibility:</b> We can make the variables of the class as read-only or write-only depending on our requirement. If we wish to make the variables as read-only then we have to omit the setter methods like setName(), setAge() etc. from the above program or if we wish to make the variables as write-only then we have to omit the get methods like getName(), getAge() etc. from the above
program</li>
<li><b>Reusability:</b> Encapsulation also improves the re-usability and easy to change with new requirements.</li>
<li><b>Testing code is easy:</b> Encapsulated code is easy to test for unit testing.</li>

</ol>
<h4>Example :</h4>
<p> Let us take two data members namely name of type String and marks of type int which are declared as private. We will use getter and setter methods to set and get these values. Go through the java code below to understand better.</p>
<div class="row">
   <div class="col-lg-5">
<pre id="code">

public class Encapsulation {
	String name;
	int marks;
	 public void setName(String name)
	    {
	        this.name=name;
	    }
	    public void setMarks(int marks)
	    {
	        this.marks=marks;
	    }
	    public String getName()
	    {
	        return name;
	    } 
	    public int getMarks()
	    {
	        return marks;
	    }
	    public static void main(String args[]) 
	    {
	     Encapsulation obj= new Encapsulation();
	     obj.getName();
	     obj.getMarks();
	     System.out.println("The name of the student is:"+name);
	      System.out.println("The marks obtained by the student is:"+marks);
	     }
	     }
</pre>
</div>
<div class="col-lg-5">
<h2>Try It . . .</h2>
		<form action="<%=request.getContextPath() %>/saveEncData.do"
			method="post">
			<fieldset>
			Enter Name:<br> <input type="text" name="name" required="required"> <br>
			Enter Marks:<br> <input type="text" name="marks" required="required"> <br>
			<br>
	
			<input type="submit" value="submit" />
			</fieldset>
		</form>
		<h4>Entered inputs:</h4>
		 Name: ${EnObj.name} <br>
  		 Marks: ${EnObj.marks}
</div>
</div>




</div>
</div>

<script src="js/nav.js"></script>
</body>
</html>
