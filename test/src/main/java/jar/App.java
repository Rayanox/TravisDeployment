package jar;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
		System.out.println( "Hello World!" );
		
		try {
			Thread.sleep(1000*3600);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		System.out.println( "END OF PROGRAM!" );
    }
}
