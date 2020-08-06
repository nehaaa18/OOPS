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
.row{
height:90%;}
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
<h1><u>METHOD OVERLOADING </u></h1>
<p>
If a class has multiple methods having same name but different in parameters, it is known as <b>Method Overloading</b>.</p>
<p>If we have to perform only one operation, having same name of the methods increases the readability of the program.</p>
<p>
Suppose you have to perform addition of the given numbers but there can be any number of arguments, if you write the method such as a(int,int) for two parameters, and b(int,int,int) for three parameters then it may be difficult for you as well as other programmers to understand the behavior of the method because its name differs.</p>
<p>So, we perform method overloading to figure out the program quickly.</p>

<h4><b>Advantage of method overloading :</b></h4>
<p>Method overloading increases the readability of the program.</p>
<p><b>Different ways to overload the method :</b>
<p>There are two ways to overload the method in java:</p>
<ul>
<li><b>By changing number of arguments</b></li>
<li><b>By changing the data type</b></li>
</ul>
<h4><b>Example :</b></h4>
<p>Let us consider a class named Overloading. In this class we create 4 methods of same name that is area. The first method calculates the area od a circle and takes the parameter radius as input. The second method calculates the area of the rectangle and takes length and breadth as parameter. The third method calculates the area of a square and takes side as a parameter. The fourth method calculates the area of a triangle and takes base and height as its parameters.</p>
<div class="row">
<div class="col-lg-5" >
<pre id="code">
public class Overloading 
{
	public double area(double a)
	{
		return (3.14*a*a);//returns area of a circle
		
	}//end of method 
	public  double area(double l,double b)
	{
		return (l*b);//returns area of a rectangle
	}//end of method 
	public  int area(int side)
	{
		return (side*side);//returns area of a square
	}//end of method 
	public  double area(int base,int height)
	{
		return (0.5*base*height);//returns area of a triangle
	}//end of method 
	public static void main(String args[])
	{
	   Overloading obj=new Overloading();//Object creation
	   double radius,length,breadth;
	   int side,height,base;
	   System.out.println("Area of circle:"+obj.area(radius));
	   System.out.println("Area of rectangle:"+obj.area(length,breadth));
	   System.out.println("Area of square:"+obj.area(side));
	   System.out.println("Area of triangle:"+obj.area(base,height));
	  }//end of main method
	  
 }//end of class
 </pre>
</div>

<div class="col-lg-7" id="formc_color" style="border: 1px solid black" >
<h2><b>Try It . . .</b></h2>
<div style="border: 1px solid black">
		<form action="/Oops_Properties/saveOverload.do"
			method="post">
			<fieldset>
			<h5>To calculate area of a circle:</h5>
			Enter Radius:<br> <input type="number" name="radius" required="required"> <br>
			<input type="submit" value="submit" name="Submit1" />
			</fieldset>
			</form>
			<h5>Result :${Ov1} <br></h5>
			</div>
			<br>
			<div style="border: 1px solid black">
		    <form action="/Oops_Properties/saveOverload.do"
			method="post">
			<fieldset>
			<h5>To calculate area of a rectangle :</h5>
			Enter length :<br> <input type="number" name="len" required="required"> <br>
			Enter breadth :<br> <input type="number" name="bre" required="required"> 
			<input type="submit" value="submit" name="Submit2" />
			</fieldset>
		</form>
		
	   <h5> Result : ${Ov2 }<br></h5>
	   </div>
	   <div style="border: 1px solid black">
	    <form action="/Oops_Properties/saveOverload.do"
			method="post">
			<fieldset>
			<h5>To calculate area of a square :</h5>
			Enter side :<br> <input type="number" name="side" required="required">
			<input type="submit" value="submit" name="Submit3" />
			</fieldset>
		</form>	
	  <h5>  Result :${Ov3}</h5>
	    </div>
	   <div style="border: 1px solid black">
	    <form action="/Oops_Properties/saveOverload.do"
			method="post">
			<fieldset>
			<h5>To calculate area of a triangle :</h5>
			Enter base :<br> <input type="number" name="base" required="required"> <br>
			Enter height :<br> <input type="number" name="height" required="required"> <br>
			<input type="submit" value="submit" name="Submit4" />
			</fieldset>
		</form>
		 <h5>Result : ${Ov4 }<br></h5>
		</div>
</div>
</div>
</div>


<script src="js/nav.js"></script>
</body>
</html>