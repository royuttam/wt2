<%@ page import = "java.util.Map, java.net.*, java.io.*, org.json.simple.*" %>
<%
try {
BufferedReader reader = request.getReader();
StringBuffer data=new StringBuffer();
String line;
while((line = reader.readLine()) != null)
  data.append(line);

//String text = "{\"name\":\"John\",\"married\":true,\"age\":38}";
String txt = data.toString();
JSONObject obj = (JSONObject)JSONValue.parse(data.toString());
Number x = (Number) obj.get("x");
Number y = (Number) obj.get("y");
            System.out.println(x+" "+y);

//            System.out.println(data);

/*
String requestURL = request.getRequestURL().toString();
String queryString = request.getQueryString();
if (queryString != null) requestURL += "?" + queryString;
System.out.println(requestURL);
*/



//{"x":5, "y":6}
//<msg>Hello World!</msg>
//alert('Hi!');

}catch(Exception e) {System.out.println(e);}
%>

