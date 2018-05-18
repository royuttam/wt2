<%@page import="java.sql.*,org.json.simple.JSONObject,org.json.simple.parser.JSONParser"%>
<%
  try {
    Class.forName("org.gjt.mm.mysql.Driver");
    String url = "jdbc:mysql://127.0.0.1:3306/test";
    Connection conn = DriverManager.getConnection(url, "root", "nbuser");
    Statement stmt = conn.createStatement();
    String JSONStr = request.getParameter("JSONStr");
    JSONObject jo = (JSONObject) new JSONParser().parse(JSONStr);		
    String name = (String)jo.get("name");
    String contact = (String)jo.get("contact");
    String designation = (String)jo.get("designation");		
    String query ="UPDATE employee SET contact='"+contact+"', designation='"+designation+"' WHERE name='"+name+"'";
    stmt.executeUpdate(query);
    out.println("Updated successfully");
  }catch(Exception e) {e.printStackTrace();out.println("Failed to update");}
%>
