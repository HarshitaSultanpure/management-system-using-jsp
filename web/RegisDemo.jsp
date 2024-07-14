<%@page import="java.sql.*" %>

<%
    
  String s1=request.getParameter("u1");
  String s2=request.getParameter("u2");
  String s3=request.getParameter("u3");
  
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
  
%>
