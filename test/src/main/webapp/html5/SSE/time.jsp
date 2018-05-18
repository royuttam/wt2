<%
response.setContentType("text/event-stream"); 
response.setCharacterEncoding("UTF-8");
//response.setHeader("Connection", "keep-alive");
//out.print("retry: 1	000\n");
try {
	while(true) {
	    //out.print("retry: 4000\n");
		out.print("data: "+ new java.util.Date() +"\n\n");
		out.flush();
		Thread.sleep(2000);
	}
}catch(Exception e) {out.println(e);}
%>
