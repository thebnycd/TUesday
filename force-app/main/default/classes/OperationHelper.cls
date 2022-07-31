public  class OperationHelper {
    public Decimal largestOutTwoNumber(decimal a, decimal b){
        if (a > b) {
            return a;
        }else{
            return b;
        }
    }
    public Decimal smallestOutOfThreeNumbers(decimal x, decimal y, decimal z){
        if (x<=y && x <=z ){
            return x;
        } else if (y <= x && y <= z){
            return y;
        }else{
            return z;
        }
    }

    public integer sumOfPositiveInteger(integer n){
        integer num1;
        if (n < 0) {
            system.debug('We are not calculatin the sum for negative numbers');
        } else {
            num1 = 0;
            for (integer i=1; i<=n; i++) {
                num1 = num1 + i;
            }
        }
        return num1;
    }

    public decimal sum(List<decimal> sumList){
        decimal num1 = 0;
        if (!sumList.isEmpty()) {
            for(decimal variable: sumList){
                 num1 = variable + num1;
            }
            }else{
                System.debug('Please provide values to do the operation');
                num1 = null;
            }
            return num1;
        }
        
    public decimal average(List<decimal> sumList){
        decimal num1 = 0;
        if (!sumList.isEmpty()) {
             for(decimal variable: sumList){
                 num1 = variable + num1;
            }
             
            }else{
                System.debug('Please provide values to do the operation');
                return null;
            }

            return num1/sumlist.size();
        }

    public decimal highest(List<decimal> sumList){
        decimal num1 = 0;
        if (!sumList.isEmpty()) {
            sumList.sort();
            num1 = sumList.size()-1;
            }else{
                System.debug('Please provide values to do the operation');
                return null;
            }
            return num1;
        }

    
        
    }
