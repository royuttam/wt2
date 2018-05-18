import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.*;
import java.io.*;
import java.util.*;
class test {
  public static void main(String args[]) throws Exception {
  
  /*
    JSONObject obj = new JSONObject();
	obj.put("name", "John");
	obj.put("married", new Boolean(true));
	obj.put("age", new Integer(38));
	
	String text = obj.toJSONString();
	
	System.out.println(text);
	FileWriter file = new FileWriter("test.json");
	file.write(obj.toJSONString());
	file.close();
	
	
	Map obj = new LinkedHashMap();
	obj.put("name", "Jerry");
	obj.put("married", new Boolean(true));
	obj.put("age", new Integer(38));
	
	String text = JSONValue.toJSONString(obj);	
	System.out.println(text);
	
	
JSONArray arr = new JSONArray();
arr.add("John");
arr.add(new Boolean(true));
arr.add(new Integer(38));
String text = JSONValue.toJSONString(arr);	
System.out.println(text);
	
	
	String text = "{\"name\":\"John\",\"married\":true,\"age\":38}";
	//JSONObject obj = (JSONObject)new JSONParser().parse(text);
	
	//JSONObject obj = (JSONObject) new JSONParser().parse(new FileReader("test.json"));
	JSONObject obj = (JSONObject)JSONValue.parse(text);
	
	String name = (String)obj.get("name");					//name = "John"
	Boolean married = (Boolean) obj.get("married");			//married = true
	Number age = (Number) obj.get("age");					//age = 38
		
	System.out.println(name+" "+married+" "+age);
	*/
String text = "[\"John\",true,38]";
JSONArray arr = (JSONArray)JSONValue.parse(text);
String name = (String)arr.get(0);			//name = "John"
Boolean married = (Boolean)arr.get(1);		//married = true
Number age = (Number)arr.get(2);			//age = 38
System.out.println(name+" "+married+" "+age);
	
	
  }
}