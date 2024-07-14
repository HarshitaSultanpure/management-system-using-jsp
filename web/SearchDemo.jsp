<%@page import="java.sql.*" %>

<html>
<head>
<link rel = "stylesheet" href = "abc.css">
</head>

<body>
<%@include file="menumenu.jsp" %>

<div id = "mydata">
<center>
<form action="SearchDemo.jsp" method="get">
<table cellpadding = "12">
<tr>
<td> Enter RNO </td>
<td> <input type = "text" class = "A" placeholder = "Enter RNO....." name = "u1"> </td>
</tr>
   
<tr>
<th colspan = "2"> <input type = "submit" class = "B" name="b1" value = "Search"> </th>
</tr>

</table>
</form>

<%
    String s1=request.getParameter("b1");
    
    if(s1!=null)
    {
        String s11=request.getParameter("u1");
        
    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql:///ajava88?useSSL=false","root","root");
	Statement st = con.createStatement();
	String q = "select * from insmarks where UNAME='"+s11+"'";
	ResultSet rs = st.executeQuery(q);
		
	if(rs.next())
	{
%>      
        <form action="SearchDemo.jsp" method="get">
        <table cellpadding="12">
        <tr>
	<td> RNO </td>
	<td> <input type="text" name="u1" value=<%= rs.getString(1) %> </td>
        </tr>
			
	<tr>
	<td> NAME </td>
	<td> <input type="text" name="u2" value=<%= rs.getString(2) %> </td>
        </tr>
	
        <tr>
	<td> PHY </td>
	<td> <input type="text" name="u3" value=<%= rs.getString(3) %> </td>
        </tr>
	
        <tr>
	<td> CHE </td>
	<td> <input type="text" name="u4" value=<%= rs.getString(4) %> </td>
        </tr>
	
        <tr>
	<td> MATHS </td>
	<td> <input type="text" name="u5" value=<%= rs.getString(5) %> </td>
        </tr>
	
        <tr>
        <th colspan="6"><input type="submit" class="B" name="b2" value="Update"> </th>
        </tr>
        
        </table>
        </form>

    <% 
        }
        //con.close();
        }
        catch(Exception e)
	{
            //out.println(e);
	}
    }
%>
</center>
</div>

</body>
</html>

<%
    String s2=request.getParameter("b2"); 
    if(s2!=null)
    {
        String s21=request.getParameter("u1");
        String s22=request.getParameter("u2");
        String s23=request.getParameter("u3");
        String s24=request.getParameter("u4");
        String s25=request.getParameter("u5");
        
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///ajava88?useSSL=false","root","root");
            Statement st=con.createStatement();
            String q="update insmarks set UPASS='"+s22+"',PHY='"+s23+"',CHE='"+s24+"',MATH='"+s25+"' where UNAME='"+s21+"'";
            st.executeUpdate(q);
            response.sendRedirect("ShowAll.jsp");
            con.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }
    }
%>

