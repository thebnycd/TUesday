public with sharing class AccountSchedulable implements Schedulable {
    public void execute(SchedulableContext sc){
        AccountsBatch ab = new AccountsBatch();
        Integer numberOfRecords = 20;
        //1 way 
        ID batchId = Database.executeBatch(ab, numberOfRecords);
    }
}
