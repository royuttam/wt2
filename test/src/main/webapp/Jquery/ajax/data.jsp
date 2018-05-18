<%@ page import = "java.util.Map, java.net.*, java.io.*" %>
<%

Map<String, String[]> parameters = request.getParameterMap();
for(String parameter : parameters.keySet()) {
        String[] values = parameters.get(parameter);
  out.println(parameter+": "+values[0]);
}

/*
String a = request.getParameter("a");
String b = request.getParameter("b");
out.println(a+' '+b);
*/

BufferedReader reader = request.getReader();
//        reader.mark(10000);

       String line;
        while((line = reader.readLine()) != null)
            System.out.println(line);

/*
String requestURL = request.getRequestURL().toString();
String queryString = request.getQueryString();
if (queryString != null) requestURL += "?" + queryString;
System.out.println(requestURL);
*/



//{"x":5, "y":6}
//<msg>Hello World!</msg>
//alert('Hi!');
%>

