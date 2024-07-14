<%@page import="java.sql.*" %>

<html>
<head>
    <link rel="stylesheet" href="abc.css">
</head>
<body>
    <form action="harshu.jsp">
    <center>
<table cellpadding="12">

<tr>
<td> Enter Name </td>
<td> <input type="text" placeholder="name.............." name="u1" > </td>
</tr>    
<!--
<tr>
<td>Enter Pass</td>
<td><input type="text" placeholder="pass............" name="u2"> </td>
</tr>

<tr>
<td>Enter CNO</td>
<td><input type="text" placeholder="cno............" name="u3"> </td>
</tr>
-->
<tr>
<th colspan="2"><input type="submit" name="b1" value="insert">    
</tr>
  </table>
</center>
        </form>
<%
    try
    {
        //String s11=request.getParameter("b1");
    
    //if(s11!=null)
    //{
    String s1=request.getParameter("u1");
    //String s2=request.getParameter("u2");
    //String s3=request.getParameter("u3");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///ajava88?useSSL=false","root","root");
Statement st=con.createStatement();
String q="delete from regis where uname='"+s1+"'";

st.executeUpdate(q);
//if(rs.next())
//{
    %>
<center>
</center>

    <%
//}
}
    //}
    catch(Exception e)
    {
        out.print(e);
    }
%>


  
    </body>
</html>