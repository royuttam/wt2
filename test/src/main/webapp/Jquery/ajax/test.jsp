<%@ page import = "java.util.Map" %>
<%

Map<String, String[]> parameters = request.getParameterMap();
for(String parameter : parameters.keySet()) {
        String[] values = parameters.get(parameter);
  out.println(parameter+": "+values[0]);
}

out.println("test");

//System.out.println("test.jsp called");
//{"a":5, "b":6}

/*String requestURL = request.getRequestURL().toString();
String queryString = request.getQueryString();
if (queryString != null) requestURL += "?" + queryString;
out.println(requestURL);
*/
//Hello World!
//<div id="msg">This is a paragraph</div>

%>
