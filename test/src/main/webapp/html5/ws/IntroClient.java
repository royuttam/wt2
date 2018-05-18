//IntroClient.java
import java.net.*;
import java.io.*;
public class IntroClient {
 public static void main (String[] args) {
  try {
    BufferedReader xmlFile = new BufferedReader(new InputStreamReader(new FileInputStream(args[1])));
    String xmlBody = "", line, result = "";
    while((line = xmlFile.readLine()) != null)
       xmlBody += line+"\n";

//    String reqMsg="GET wt2/echo HTTP/1.1\n"+ xmlBody+"\n\n";

    String reqMsg="GET /wt2/echo HTTP/1.1\n"+ "Content-Length: "+xmlBody.length() +"\n"+ xmlBody+ "\n\n";
    //String reqMsg="GET /wt2/echo HTTP/1.1\n"+ "Content-Length: "+"10" +"\n"+ xmlBody+ "\n\n";
	   	   	
    Socket socket = new Socket(args[0], 8080);
    OutputStream os = socket.getOutputStream();
    os.write(reqMsg.getBytes());
    os.flush();

    InputStream is = socket.getInputStream();
    int ch;
    while( (ch=is.read())!= -1)     
      result = result+(char)ch;

    System.out.println("Sent this message-->\n" + reqMsg);
    System.out.print("Received this message-->:\n" + result);

   } catch (Exception e) {
     e.printStackTrace();
   }
  }
}