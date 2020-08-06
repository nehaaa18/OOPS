<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
</head>
<body>
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

<h2>Two Equal Columns</h2>

<div class="row">
  <div class="col-lg-3" style="background-color:#aaa;">
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
	     Encapsulation obj= new Encapsulation();
	     obj.getName();
	     obj.getMarks();
	     System.out.println("The name of the student is:"+name);
	     System.out.println("The marks obtained by the student is:"+marks);
	     }
}
</pre>
</div>
  </div>
  <div class="column" style="background-color:#bbb;">
    <div class="column">
<h2>Try It . . .</h2>
		<form action="<%=request.getContextPath() %>/saveEncData.do" method="post">
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
</body>
</html>