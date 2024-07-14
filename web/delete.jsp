<%@page import="java.sql.*" %>

<html>
<head>
<link rel = "stylesheet" href = "abc.css">
</head>

<body>
<%@include file="menumenu.jsp" %>

<div id = "mydata">
<center>
<form action="delete.jsp" method="get">
<table cellpadding = "12">
<tr>
<td> Enter RNO </td>
<td> <input type = "text" class = "A" placeholder = "Enter RNO....." name = "u1"> </td>
</tr>
   
<tr>
<th colspan = "2"> <input type = "submit" class = "B" name="b1" value = "Delete"> </th>
</tr>

</table>
</form>

    <%
        String s1 = request.getParameter("b1");
			
        if(s1!=null)
        {
            String s11=request.getParameter("u1");
        try
	{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///ajava88?useSSL=false","root","root");
            Statement st = con.createStatement();
            String q = "delete from insmarks where UNAME='"+s11+"'";
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
    
    </center>
    </div>
    </body>
    </html>