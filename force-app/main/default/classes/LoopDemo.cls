public class LoopDemo {
    public void print_int_while(){
        Integer count = 1;
        while(count<=25){
            system.debug(count);
            count++;
        }
    }

    public void print_N_numbers(integer n){
        for (integer i=0; i<n; i++) {
            System.debug(i);            
        }
    }

    public void print_N_Odd_numbers(integer startInt, integer endint){
    integer methodInt = 1;
        for(Integer i = startInt; i <= endInt; i++){
            integer modI = math.mod(i,2);
            //if reminder is 1, then print. else next
            if(modI ==1){
                system.debug(i);
            }
            
        }
    }
}
