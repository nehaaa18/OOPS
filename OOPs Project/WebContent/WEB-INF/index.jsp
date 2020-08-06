<!DOCTYPE HTML >
<html>
<head>
<style>
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
body {
    font-family: 'Comic Sans MS';
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
h1
{color:  blue;
}
</style>
<title>OOPS Properties | Home</title>
  
 <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/stylesheet.css">
</head>
<body style="font-family:Comic sans MS">
<h1 style="color:#002080;font-size: 44px"><u>OOPs & its Properties</u></h1>
<hr>
 <div class="row">
 <div class="col-lg-2">
<div class="vertical-menu">
 <%@ include file="menu.html"%> 
</div>
</div>
<div class="col-lg-9">
<p style="font-size: 22px">OOP concepts in Java are the main ideas behind Java is Object Oriented Programming. They are an <b>abstraction</b>, <b>encapsulation</b>, <b>inheritance</b>, and <b>polymorphism</b>. Grasping them is key to understanding how Java works. Basically, Java OOP concepts let us create working methods and variables, then re-use all or part of them without compromising security.</p>
<h4 style ="color:#8080ff" >List of OOP Concepts in Java</h4>
<h4>There are four main OOP concepts in Java. These are:</h4>
<ul style="font-size: 22px">
<li><b>Abstraction</b>: Abstraction means using simple things to represent complexity. We all know how to turn the TV on, but we do not need to know how it works in order to enjoy it. In Java, abstraction means simple things like objects, classes, and variables represent more complex underlying code and data. This is important because it lets avoid repeating the same work multiple times.</li>
<li><b>Encapsulation</b>:This is the practice of keeping fields within a class private, then providing access to them via public methods. It is a protective barrier that keeps the data and code safe within the class itself. This way, we can re-use objects like code components or variables without allowing open access to the data system-wide.</li>
<li><b>Inheritance</b>:This is a special feature of Object Oriented Programming in Java. It lets programmers create new classes that share some of the attributes of existing classes. This lets us build on previous work without reinventing the wheel.</li>
<li><b>Polymorphism</b>:This Java OOP concept lets programmers use the same word to mean different things in different contexts. One form of polymorphism in Java is method overloading. That is when different meanings are implied by the code itself. The other form is method overriding. That is when the different meanings are implied by the values of the supplied variables. See more on this below.</li>
</ul>
<img src="rt.png">
<h4 style ="color:#8080ff" >How OOP Concepts in Java Work?</h4>
<p style="font-size: 22px">sOOP, concepts in Java work by letting programmers create components that can be re-used in different ways, but still maintain security.
<h4>Best Practices for OOP Concepts in Java:</h4>
<p style="font-size: 22px">Since the aim of OOP concepts in Java is to save time without sacrificing security and ease of use, the best practices are all oriented toward advancing that main goal.
<ul style="font-size: 22px">
<li>DRY (Do not Repeat Yourself):This is the core concept in Java. You should never have two blocks of identical code in two different places. Instead, have one method you use for different applications.</li>
<li>If you expect your Java code to change in the future, encapsulate it by making all variables and methods private at the outset. As the code changes, increase access to protected as needed, but not too public.</li>
<li>Single Responsibility. Another best practice for OOP concepts in Java is the Single Responsibility Principle. Simply put, a class should always have only one functionality. That way, it can be called and/or extended on its own when new uses arise for it, without causing coupling between different functionalities.</li>
<li>Open Closed Design. Make all methods and classes Closed for modification but Open for an extension. That way, tried and tested code can remain static but can be modified to perform new tasks as needed</li>
</ul>
</div>
</div>
<script src="js/nav.js"></script>
</body>
</html>