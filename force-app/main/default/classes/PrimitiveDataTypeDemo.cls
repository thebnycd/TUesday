public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        //method body
       string batchName = 'Falcons';
       integer totalCandidates = 40;
       boolean isAdminCompleted = true;

       system.debug(batchName);
       system.debug(totalCandidates);
       system.debug(isAdminCompleted);

       string batchDescription = batchName + 'are the BESTEST.';
       system.debug(batchDescription);
    }

    public void printBasicDataType2(){
    //we will write some code here.
        Decimal decValue = 27.01;
        System.debug('Decimal: ' + decValue); //decimal

        Long longValue = 2147483648L;
        System.debug('Long: ' + longValue); //long
    }
}
