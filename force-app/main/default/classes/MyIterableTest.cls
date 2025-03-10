@IsTest
public class MyIterableTest 
{

    @IsTest
    static void testIterableForLoop()
    {
        
        //create a list of strings
        List<String> strings = new List<String> {'Hello', 'World'};
        
        //Create an Instance of Myiterable
        
            	MyIterable myiterable = new MyIterable(strings);
        
        //Use a for loop to iterate over the Myiterable instance
        for(String str: myIterable)
        	{
            
        
            //print each string to the debug log
            System.debug(str);
    		}
        }
    
}