@isTest
    public with sharing class AccountTriggerHandlerTest {
        @isTest
        private static void testmethod1() {
            list<Account> listAcc = new list<account>();
            
            Account a = new Account();
            a.name = 'SI Test';
            a.Industry = 'Energy';
            a.Type = 'Customer - Direct';
            a.Active__c = 'Yes';
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

            //do assertion to check if description is updated only in a1
            //how can we assert?
            List<Account> accounts1 = [select id, description, active__C FROM Account where Active__c = 'Yes'];
            system.assertEquals(1, accounts1.size());

            system.assertEquals('Account is now active. Enjoy!!!!!', accounts1[0].Description);

            for (account acc : listAcc) {
                acc.Active__c = 'Yes';
            }
            update listAcc;

            List<Account> accounts2 = [select id, description, active__C FROM Account where Active__c = 'Yes'];
            system.assertEquals(3, accounts2.size());
            for (account eachAcc : accounts2)
             {
                system.assertEquals('Account is now active. Enjoy!!!!!', eachAcc.Description);
        }
    }
}