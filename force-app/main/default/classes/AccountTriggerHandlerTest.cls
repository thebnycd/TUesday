@isTest
public with sharing class AccountTriggerHandlerTest {
    @isTest
    private static void testmethod1() {
        list<Account> listAcc = new list<account>();
        
        Account a = new Account();
        a.name = 'SI Test';
        a.Industry = 'Energy';
        a.Type = 'Customer - Direct';
        listAcc.add(a);
        
        Account a1 = new Account();
        a1.name = 'UI Test';
        a1.Industry = 'Energy';
        a1.Type = 'Customer - Direct';
        listAcc.add(a1);
        
        
        account a2 = new account();
        a2.name = 'PI Test';
        a2.Industry = 'Banking';
        a2.Type = 'Customer - Direct';
        listAcc.add(a2);

        insert listAcc;

        for (account acc : listAcc) {
            acc.Active__c = 'Active';
        }
        update listAcc;

        test.startTest();

        test.stopTest();
    }
}
