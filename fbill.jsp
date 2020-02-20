<%@page language ="java" import="java.sql.*"%>
<html>
<head>
	<title>Bill-amount</title>
	<link rel="stylesheet" type="text/css" href="regstyle.css">
</head>
<body>
<%
    try
        {
            String conno=request.getParameter("custno");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cs =DriverManager.getConnection("jdbc:mysql://localhost:3308/eb","root","root");
            Statement s =cs.createStatement();
            ResultSet rs=s.executeQuery("select * from user where cno ='"+conno+"'");
            if(rs.next())
            {
%>
	<div class="container">
	    <form action ="fbilling.jsp">
            <div class="partition">
                <div class="left">  
                    <label>Connection No</label>
                </div>
                <div class="right"> 
                    <input type="text" name="cno" value="<%=rs.getString("cno")%>">
                </div>
            </div>
            <div class="partition">
                <div class="left">  
                    <label>Connection Type</label>
                </div>
                <div class="right"> 
                    <input type="text" name="conntype" value="<%=rs.getString("cntype")%>">
                </div>
            </div>
            <div class="partition">
                <div class="left">  
                    <label>Name</label>
                </div>
                <div class="right"> 
                    <input type="text" name="name" value="<%=rs.getString("name")%>">
                </div>
            </div>
            <div class="partition">
                <div class="left">  
                    <label>Landmark</label>
                </div>
                <div class="right"> 
                    <input type="text" name="address" value="<%=rs.getString("addr")%>">
                </div>
            </div>
                <div class="partition">
                <div class="left">  
                    <label>Initial Reading</label>
                </div>
                <div class="right"> 
                    <input type="text" name="ireading" value="<%=rs.getString("intr")%>">
                </div>
            </div>
            <div class="partition">
                <div class="left">  
                    <label>Current Reading</label>
                </div>
                <div class="right"> 
                    <input type="text" name="freading">
                </div>
            </div>
            <div class="partition">
                <div class="right"> 
                    <input type="submit" value="Submit">
                </div>
            </div>
            </form>	
        </div>
<%
            }
        }
    catch(Exception e)
        {
            out.println(e);
        }
%>
                
</body>
</html>


