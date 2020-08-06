package java.com;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class EncapServ
 */

@WebServlet(urlPatterns={"/saveEncData.do","/saveInheriData.do","/saveInterface.do","/saveOverriding.do","/saveOverload.do","/saveAbstract.do","/saveConstructor.do"})
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if(uri.indexOf("saveEncData.do")!=-1) {
			Encapsulation obj = new Encapsulation();
			String name = request.getParameter("name");
			int marks = Integer.parseInt(request.getParameter("marks"));
			obj.setMarks(marks);
			obj.setName(name);
			request.setAttribute("EnObj", obj);
			request.getRequestDispatcher("Encapsulation.jsp").forward(request, response);
		} 
		else if(uri.indexOf("saveInheriData.do")!=-1) {
				SecondClass obj = new SecondClass();
				int var1 = Integer.parseInt(request.getParameter("var1"));
				int var2 = Integer.parseInt(request.getParameter("var2"));
				obj.setVar1(var1);
				obj.setVar2(var2);
				int res1=obj.getVar1();
				int res2=obj.getVar2();
				request.setAttribute("InhObj1", res1);
				request.setAttribute("InhObj2", res2);
				request.getRequestDispatcher("inheritance.jsp").forward(request, response);
			} 
		else if(uri.indexOf("saveOverload.do")!=-1) {
			Overloading obj = new Overloading();
			String submit1=request.getParameter("Submit1");
			String submit2=request.getParameter("Submit2");
			String submit3=request.getParameter("Submit3");
			String submit4=request.getParameter("Submit4");
			if (submit1!= null) {
				double radius = Double.parseDouble(request.getParameter("radius"));
				double res3=obj.area(radius);
				request.setAttribute("Ov1", res3);
				request.getRequestDispatcher("overloading.jsp").forward(request, response);
			}
			if (submit2!= null)
			{	
				double length = Double.parseDouble(request.getParameter("len"));
				double breadth = Double.parseDouble(request.getParameter("bre"));
				
				double res4=obj.area(length,breadth);
				
				request.setAttribute("Ov2", res4);
				request.getRequestDispatcher("overloading.jsp").forward(request, response);
			}
			if (submit3!= null)
			{	
				int side = Integer.parseInt(request.getParameter("side"));
				int res5=obj.area(side);
				request.setAttribute("Ov3", res5);
				request.getRequestDispatcher("overloading.jsp").forward(request, response);
			}
			if (submit4!= null)
			{	
				int base = Integer.parseInt(request.getParameter("base"));
				int height = Integer.parseInt(request.getParameter("height"));
				
				double res6=obj.area(base,height);
				
				request.setAttribute("Ov4", res6);
				request.getRequestDispatcher("overloading.jsp").forward(request, response);
			}
		}
		else if(uri.indexOf("saveOverriding.do")!=-1) {
			OverridingClassDemo obj = new OverridingClassDemo();
			double a1 = Double.parseDouble(request.getParameter("num1"));
			double a2 = Double.parseDouble(request.getParameter("num2"));
			double a3 = Double.parseDouble(request.getParameter("num3"));
			double res1=obj.mul(a1,a2,a3);
			request.setAttribute("Ovr1", res1);
			request.getRequestDispatcher("overiding.jsp").forward(request, response);
		} 
		else if(uri.indexOf("saveInterface.do")!=-1) {
			InterfaceDemo2 obj = new InterfaceDemo2();
			String submit1=request.getParameter("Submit1");
			String submit2=request.getParameter("Submit2");
			if (submit1!= null) {
				double a1 = Double.parseDouble(request.getParameter("n1"));
				double a2 =Double.parseDouble(request.getParameter("n2"));
				double res1=obj.multiply_two(a1,a2);
				request.setAttribute("Inter1",res1);
				request.getRequestDispatcher("interface.jsp").forward(request, response);
			}
			if (submit2!= null)
			{	
				double a3 = Double.parseDouble(request.getParameter("n3"));
				double a4 = Double.parseDouble(request.getParameter("n4"));
				double a5 = Double.parseDouble(request.getParameter("n5"));
				double res2=obj.multiply_three(a3,a4,a5);
				request.setAttribute("Inter2",res2);
				request.getRequestDispatcher("interface.jsp").forward(request, response);
			}	
		} 
		else if(uri.indexOf("saveAbstract.do")!=-1) {
			AbstractDemo2 obj = new AbstractDemo2();
			String submit1=request.getParameter("Submitab");
			if (submit1!= null)
			{
				double a1 = Double.parseDouble(request.getParameter("n1"));
				double a2 = Double.parseDouble(request.getParameter("n2"));
				double res1=obj.multiply_two(a1,a2);
				request.setAttribute("Abs1", res1);
				request.getRequestDispatcher("abstract.jsp").forward(request, response);
			}
			
		}
	else if(uri.indexOf("saveConstructor.do")!=-1) {
			ConstructorOverloadingDemo obj = new ConstructorOverloadingDemo();
		
	   
			    int stuID=obj.getStuID();
			    String stuName=obj.getStuName();
			    int stuAge=obj.getStuAge();
				request.setAttribute("ID",stuID);
				request.setAttribute("Name",stuName);
				request.setAttribute("Age",stuAge);
		        int id =Integer.parseInt(request.getParameter("num1"));
				String studentName=request.getParameter("num2");
			    int age=Integer.parseInt(request.getParameter("num3"));
			    ConstructorOverloadingDemo obj1 = new ConstructorOverloadingDemo(id,studentName,age);
			    int res4=obj1.getStuID();
			    String res5=obj1.getStuName();
			    int res6=obj1.getStuAge();
			 
				request.setAttribute("pob4",res4);
				request.setAttribute("pob5",res5);
				request.setAttribute("pob6",res6);
				request.getRequestDispatcher("Constructor.jsp").forward(request, response);
			}
		} 

	}





