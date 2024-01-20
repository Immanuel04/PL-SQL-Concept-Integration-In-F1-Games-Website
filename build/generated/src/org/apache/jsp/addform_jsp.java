package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addform_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            form{\n");
      out.write("                border-radius: 10px;\n");
      out.write("                padding: 25px;\n");
      out.write("            }\n");
      out.write("            h3{\n");
      out.write("                color: white;\n");
      out.write("                width: min-content;\n");
      out.write("            }\n");
      out.write("            body {\n");
      out.write("                background-image: url(\"./img/f1 logo.png\");\n");
      out.write("                background-color: #cccccc;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 100%;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add Details</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"form\">\n");
      out.write("            <form method=\"post\" action=\"addrace.jsp\">\n");
      out.write("                <h3> Id: <input type=\"text\" name=\"id\" placeholder=\"ID\"><br></h3>\n");
      out.write("                <h3> Name: <input type=\"text\" name=\"name\" placeholder=\"Name\"><br></h3>\n");
      out.write("                <h3> Email: <input type=\"text\" name=\"email\" placeholder=\"Email\"><br></h3>\n");
      out.write("                <h3> Password: <input type=\"text\" name=\"password\" placeholder=\"Password\"><br></h3>\n");
      out.write("                <h3> Confirm Password: <input type=\"text\" name=\"cpass\" placeholder=\"Cpass\"><br></h3>\n");
      out.write("                <h3> Gender: <input type=\"text\" name=\"gender\" placeholder=\"Gender\"><br></h3>\n");
      out.write("                <h3> Game: <input type=\"text\" name=\"game\" placeholder=\"Game\"><br></h3>\n");
      out.write("                <h3> Age: <input type=\"text\" name=\"age\" placeholder=\"Age\"><br></h3>\n");
      out.write("                <input type=\"submit\" value=\"Insert\">\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
