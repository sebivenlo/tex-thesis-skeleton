/**
 * The obiquiteous Hello World program, a Java variant.
 * @author Pieter van den Hombergh (879417)
 */
public class Hi{
    @Override
    public String toString(){
        return "Hello world";
    }

    public static void main(String[] args){
        System.out.println(new Hi());
    }
}
