public class Calculator {
    public void printNewMessage(string msg){
        string msg1 = 'smth';   //this is fixed string
        //msg is var name. msg is dynamic.
        //used only inside the method
        system.debug(msg);
    }

    public void add(integer a, integer b){
        Integer sum = a+ b;
        system.debug(sum);
    }
}
