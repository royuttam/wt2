<%
response.setContentType("text/event-stream"); 
response.setCharacterEncoding("UTF-8");
//out.println("data: "+new sse.Score().value());


Integer score = (Integer)application.getAttribute("score");
if(score == null) {
  score = 0;
  application.setAttribute("score", score);
}
else {
score+=1+new java.util.Random().nextInt(7);
application.setAttribute("score", score);
}
out.println("data: "+score);
  

%>
