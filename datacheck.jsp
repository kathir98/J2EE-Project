<%@page language ="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		String user=request.getParameter("uname");
		String passwd=request.getParameter("pass");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/eb","root","root");
			Statement s=c.createStatement();
			ResultSet rs=s.executeQuery("select * from admin where username='"+user+"'and password='"+passwd+"'");
			if(rs.next())
			{
				out.println("loged in");
                                session.setAttribute("usernm",user);
                                response.sendRedirect("welcome.jsp");
			}
                        else
                        {
                            response.sendRedirect("login.jsp");
                        }
                        
		}
		catch(Exception e)
		{
			out.println(e);
                }

	%>
</body>
</html>