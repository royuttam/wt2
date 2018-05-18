import java.net.*;
class InterceptClient {
public static void main(String args[]) throws Exception {
    ServerSocket serverSocket = new ServerSocket(6789);
    //wait for incoming connection
    System.out.println("Server is listening on port 6789");

    Socket serverEnd = serverSocket.accept();
    System.out.println("Request accepted");
    //get streams
int c;
java.io.InputStream in = serverEnd.getInputStream();
    while (((c = in.read()) != -1)) 
      System.out.print((char) c);
  
}

}