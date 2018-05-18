import java.io.IOException;
import java.nio.ByteBuffer;

import javax.websocket.OnMessage;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import javax.websocket.OnOpen;
import javax.websocket.EndpointConfig;
import java.util.Random;
@ServerEndpoint("/score")
public class ScoreServer implements Runnable {
    Session s;
    Random r = new Random();
    long score = 0;
    public void run() {
      while(true) {
        try {
          score=score+r.nextInt(7);
          s.getBasicRemote().sendText(""+score, true);
          Thread.sleep(1000+r.nextInt(1000));
        }catch(Exception e){System.out.println("error in run():"+e);}
      }	
    }
    @OnOpen
    public void onOpen(Session session, EndpointConfig endpointConfig) {
      this.s=session;
      new Thread(this).start();
    //try {
	System.out.println("opened "+this);
        //session.getBasicRemote().sendText(new java.util.Date().toString(), true);
    //} catch (IOException e) {System.out.println(e);}
    }
/*
    @OnMessage
    public void echoTextMessage(Session session, String msg, boolean last) {
        try {
            if (session.isOpen()) {
                session.getBasicRemote().sendText(msg, last);
            }
        } catch (IOException e) {
            try {
                session.close();
            } catch (IOException e1) {
                // Ignore
            }
        }
    }
*/
@OnMessage
    public void incoming(String message) {
        // Never trust the client
        
    }


}