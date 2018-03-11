<html>
<style>
body{
  background-image:url("text2.png");
  background-repeat:no-repeat;
}

#align111{
   position:absolute;
   left:450px;
}
#align112{
   position:absolute;
   left:650px;
}

</style>
<body align=center bgcolor="#F4A460">
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
Statement stmt=connection.createStatement();
ResultSet rs=stmt.executeQuery("select * from project");
while(rs.next())
{
  String t1=rs.getString(1);
  String t2=rs.getString(2);
  String t3=rs.getString(3);
  String t4=rs.getString(4);
  String t5=rs.getString(5);
  String t6=rs.getString(6);
  String t7=rs.getString(7);
  String t8=rs.getString(8);
  String t9=rs.getString(9);
  String t10=rs.getString(10);
  String t11=rs.getString(11);
  String t12=rs.getString(12);
%>

<b id="align111">Company Name:</b><b id="align112"><%= t1 %></b><br><br>
<b id="align111">Job Role:</b><b id="align112"><%= t2 %></b><br><br>
<b id="align111">Salary per month:</b><b id="align112"><%= t3 %></b><br><br>
<b id="align111">Type(Part/Full time):</b><b id="align112"><%= t4 %></b><br><br>
<b id="align111">Freshers:</b><b id="align112"><%= t5 %></b><br><br>
<b id="align111">Door no:</b><b id="align112"><%= t6 %></b><br><br>
<b id="align111">Street:</b><b id="align112"><%= t7 %></b><br><br>
<b id="align111">city:</b><b id="align112"><%= t8 %></b><br><br>
<b id="align111">State:</b><b id="align112"><%= t9 %></b><br><br>
<b id="align111">E-mail:</b><b id="align112"><%= t10 %></b><br><br>
<b id="align111">Contact number:</b><b id="align112"><%= t11 %></b><br><br>
<b id="align111">Website:</b><b id="align112"><%= t12 %></b><br><br>
<h3><hr></h3>

<%
}
%>
</body>
</html>