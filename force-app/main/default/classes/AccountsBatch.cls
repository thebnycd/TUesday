public with sharing class AccountsBatch implements Database.Batchable<SObject>, Database.stateful{

    integer updateCount = 0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1 = database.getQueryLocator([select id, description from account]);
        return q1;
    }
     public void execute(Database.BatchableContext bc, List<Account> scope){
        system.Debug('*****Inside Execute*****');
        list<Account> updateAccounts = new list<Account>();
        for (Account acc : scope) {
            if(acc.active__c != 'No'){
                acc.description += '... updated via Batch.';
                updateAccounts.add(acc);
                updateCount++;
                system.debug('******INSIDE UPDATED*****');
            }
        }
        system.debug('**** updateCount at the End of execute method = ' + updateCount);
        update updateAccounts;
     }

     public void finish (Database.BatchableContext bc){
        system.debug('******INSIDE FINISH*****');
        system.debug('Batch is now COMPLETE. All CHUNKS are executed.');
        system.debug('*****updateCount = ' + updateCount);
     }
}
