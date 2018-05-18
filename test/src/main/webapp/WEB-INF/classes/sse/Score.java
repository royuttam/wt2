package sse;
import java.util.Random;
public class Score {

	Random r = new Random();
	static long score = 0;
	
	public String value() {
		try {
			score=score+r.nextInt(7);
		}catch(Exception e){System.out.println("error in run():"+e);}
		return score+"";
	}	
}
