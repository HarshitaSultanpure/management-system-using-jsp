<%@page import="java.sql.*" %>
<html>
<head>
    <link rel="stylesheet" href="abc.css">
</head>
<body>
    <%@include file="menumenu.jsp" %>>
    <div id="mydata">
    <center>
<%
    
try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///ajava88?useSSL=false","root","root");
    Statement st = con.createStatement();
    String q = "select * from insmarks";
    ResultSet rs = st.executeQuery(q);
%>
    
    <table cellpadding='12'>
    <tr>
    <td> RNO </td>
    <td> Name </td>
    <td> Phy </td>
    <td> Che </td>
    <td> Maths </td>
 
<%
    while(rs.next())
    {
%>

    <tr>
    <td><%= rs.getString(1) %></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    <td><%= rs.getString(4) %></td>
    <td><%= rs.getString(5) %></td>			
    </tr>
<%
    }
    con.close();
    }
    catch(Exception e)
    {
	out.println(e);
    }
%>