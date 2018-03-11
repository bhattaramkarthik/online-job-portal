<html>
<body>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%
	Connection connection = null;
 	try {
Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cbmc","root","root");
      	String sql="";

	}
	catch(Exception e)
	{
		System.out.println(e);
	}
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("t3");
String s4=request.getParameter("t4");
String s5=request.getParameter("r1");
String s6=request.getParameter("t5");
String s7=request.getParameter("t6");
String s8=request.getParameter("t7");
String s9=request.getParameter("t8");
String s10=request.getParameter("t9");
String s11=request.getParameter("t10");
String s12=request.getParameter("t11");
Statement stmt=connection.createStatement();
int norows=stmt.executeUpdate("insert into project values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"')");
%>
<h1>submitted succesfully</h1>
</body>
</html>