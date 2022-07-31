public  class Calc3 {
    public Decimal dynamicCalculationMethod(decimal a, decimal b, string operation){
        switch on operation {
            when 'ADDITION' {
                return a+b;
            } 
            when 'SUBTRACTION' {
                return a-b;
            }
            when 'DIVIVSION'{
                return a/b;
            }
            when 'MULTIPLICATION'{
                return a*b;
            }
            when else {
                return null;
            }
        }
    }
}
