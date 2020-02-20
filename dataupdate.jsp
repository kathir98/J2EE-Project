<%@page language ="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
	String n =request.getParameter("name");
        String u =request.getParameter("uname");;
        String p =request.getParameter("pass");;
	String d =request.getParameter("Designation");
        
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cs =DriverManager.getConnection("jdbc:mysql://localhost:3308/eb","root","root");
		Statement s =cs.createStatement();
		int r =s.executeUpdate("insert into admin values('"+n+"','"+u+"','"+p+"','"+d+"')");
		if(r>0)
		{
			response.sendRedirect("adregdup.jsp");
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}

	%>
</body>
</html>