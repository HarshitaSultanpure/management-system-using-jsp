<%-- 
    Document   : regis
    Created on : Mar 13, 2024, 11:08:57 PM
    Author     : manishpc
--%>
<%@page import="java.sql.*" %>

<html>
<head>

<link rel = "stylesheet" href = "abc.css">

</head>

<body>
<%@include file="loginmenu.jsp" %>

<div id = "mydata">
<center>
<form action = "regis.jsp" method = "post">
<table cellpadding = "12">
<tr>
<td> Enter Name </td>
<td> <input type = "text" class = "A" placeholder = "Enter Name....." name = "u1"> </td>
</tr>

<tr>
<td> Enter Pass </td>
<td> <input type = "password" class = "A" placeholder = "Enter Pass....." name = "u2"> </td>
</tr>

<tr>
<td> Enter Contact </td>
<td> <input type = "text" class = "A" placeholder = "Enter CNO....." name = "u3"> </td>
</tr>

<tr>
<th colspan = "3"> <input type = "submit" name="b1" class = "B" value = "Register"> </th>
</tr>

</table>


<%
    
  String s11=request.getParameter("b1");
  
  if(s11!=null)
  {
  String s1=request.getParameter("u1");
  String s2=request.getParameter("u2");
  String s3=request.getParameter("u3");
  
  if(s1.length() < 3 || s2.length() < 3)
  {
      out.print("character length is less than 3");
     
      response.sendRedirect("regis.jsp");
      %>
      <%="character length is less than 3"%>
      
      <%
  }
  else
  {
  try
  {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql:///ajava88?useSSL=false","root","root");
      Statement st=con.createStatement();
      String q="insert into regis values('"+s1+"','"+s2+"','"+s3+"')";
      st.executeUpdate(q);
      response.sendRedirect("login.jsp");
      con.close();
  }
  catch(Exception e)
  {
      out.println(e);
  }
  }
  }
%>

</form>
</center>
</div>

</body>
</html>