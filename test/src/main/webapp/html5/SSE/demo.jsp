<%
response.setContentType("text/event-stream"); 
response.setCharacterEncoding("UTF-8");
//out.println("retry: 1000\n");
//out.print(": This is a comment.\n\n");
//out.print("data: This is a multi-line message.\n");
//out.print("data: It has two lines.\n\n");

//out.print("data: {\"user\": \"Tom\", \"loginTime\": \"10:35:03\"}\n\n");

out.print("event: login\n");
out.print("data: {\"user\": \"Tom\", \"loginTime\": \"10:35:03\"}\n\n");
%>
