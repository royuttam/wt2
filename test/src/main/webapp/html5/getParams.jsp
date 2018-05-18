<%@page import="java.util.*,java.io.*"%>
<%
Enumeration parameterList = request.getParameterNames();
  while( parameterList.hasMoreElements() )
  {
    String sName = parameterList.nextElement().toString();
      String[] sMultiple = request.getParameterValues( sName );
      if( 1 >= sMultiple.length )
        // parameter has a single value. print it.
        out.println( sName + " = " + request.getParameter( sName ) + "<br>" );
      else
        for( int i=0; i<sMultiple.length; i++ )
          // if a paramater contains multiple values, print all of them
          out.println( sName + "[" + i + "] = " + sMultiple[i] + "<br>" );
  }
%>