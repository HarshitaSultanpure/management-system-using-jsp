package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class harshu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <link rel=\"stylesheet\" href=\"abc.css\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<table cellpadding=\"12\">\n");
      out.write("<tr>\n");
      out.write("<td> Enter Name </td>\n");
      out.write("<td> <input type=\"text\" placeholder=\"name..............\" name=\"u1\" > </td>\n");
      out.write("</tr>    \n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>Enter Pass</td>\n");
      out.write("<td><input type=\"text\" placeholder=\"pass............\" name=\"u2\"> </td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>Enter CNO</td>\n");
      out.write("<td><input type=\"text\" placeholder=\"cno............\" name=\"u3\"> </td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("<th colspan=\"4\"><input type=\"submit\" value=\"insert\">    \n");
      out.write("</tr>\n");

    try
    {
    String s1=request.getParameter("u1");
    String s2=request.getParameter("u2");
    String s3=request.getParameter("u3");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///ajava88?useSSL=false","root","root");
Statement st=con.createStatement();
String q="insert into regis values('"+s1+"','"+s2+"','"+s3+"')";
st.executeUpdate(q);
con.close();
    }
    catch(Exception e)
    {
        out.print(e);
    }

      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
