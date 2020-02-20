<%@page language ="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
	String cn =request.getParameter("cno");
        String type =request.getParameter("connection");;
        String name =request.getParameter("name");;
	String addr =request.getParameter("address");
        String mnumber=request.getParameter("no");
        String inital=request.getParameter("reading");
        String emailaddr=request.getParameter("email");
        
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cs =DriverManager.getConnection("jdbc:mysql://localhost:3308/eb","root","root");
		Statement s =cs.createStatement();
		int r =s.executeUpdate("insert into user(cno,cntype,name,addr,intr,mno,email) values('"+cn+"','"+type+"','"+name+"','"+addr+"','"+inital+"','"+mnumber+"','"+emailaddr+"')");
		if(r>0)
		{
			response.sendRedirect("welcome.jsp");
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}

	%>
</body>
</html>