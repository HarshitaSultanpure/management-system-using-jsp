<html>
<head>
<link rel = "stylesheet" href = "abc.css">
</head>

<body>
<%@include file="loginmenu.jsp" %>


<div id = "mydata">
<center>
<form action="LoginDemo.jsp" method="post">

    <%
        String s2=request.getParameter("s1");
        if(s2!=null)
        {
        %>
        
        <%=s2%>
        
        <%}%>
<table cellpadding = "12">
<tr>
<td> Enter Name </td>
<td> <input type = "text" class = "A" placeholder = "Enter Name....." name = "u1"> </td>
</tr>

<tr>
<td> Enter Pass </td>
<td> <input type = "password" class = "A" placeholder = "Enter Password....." name = "u2"> </td>
</tr>

<tr>
<th colspan = "2"> <input type = "submit" class = "B" value = "Login"> </th>
</tr>

</table>
</center>
</div>
<form>

</body>
</html>