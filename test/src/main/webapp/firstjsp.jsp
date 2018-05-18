<%@ page import="java.io.*" %>
<html>
<head><title>Square table</title>
</head>
<body>
<%

String lat = request.getParameter("lat");
String lng = request.getParameter("lng");
//out.println(lat+" "+lng);

String file = application.getRealPath("/") + "/" +"test.txt";

out.println(lat);
out.println(lng);
System.out.println(lat+" "+lng);
lat = lat +"\t";
lng = lng + "\t";
FileWriter filewriter = new FileWriter(file, true);
            filewriter.write(lat);
            filewriter.write(lng);
           filewriter.write( System.getProperty("line.separator"));
            filewriter.close();
   
     

%>
</body>
</html>