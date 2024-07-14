<%-- 
    Document   : regis
    Created on : Mar 13, 2024, 11:08:57 PM
    Author     : manishpc
--%>

<html>
<head>

<link rel = "stylesheet" href = "abc.css">
<script type="text/javascript" src="xyz.js"></script>
</head>

<body>
<%@include file="loginmenu.jsp" %>

<div id = "mydata">
<center>
<form action = "RegisDemo.jsp" name="form1">
<table cellpadding = "12">
<tr>
<td> Enter Name </td>
<td> <input type = "text" class = "A" placeholder = "Enter Name....." id="t1" name = "u1"> </td>
<font id="s1"> </font> 
</tr>

<tr>
<td> Enter Pass </td>
<td> <input type = "password" class = "A" placeholder = "Enter Pass....." id="t2" name = "u2"> </td>
<font id="s2"> </font>
</tr>

<tr>
<td> Enter Contact </td>
<td> <input type = "text" class = "A" placeholder = "Enter CNO....." id="t3" name = "u3"> </td>
</tr>

<tr>
<th colspan = "3"> <input type = "button" name="b1" class = "B" value = "Register" onclick="demo()"> </th>
</tr>

</table>
</form>
</center>
</div>

</body>
</html>