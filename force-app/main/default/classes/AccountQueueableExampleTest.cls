@isTest
public  class AccountQueueableExampleTest {
    @isTest
    public static void testQueueable(){
        List<Account> listAcc = new list<Account>();
        for (integer i=0; i<500; i++) {
            account a3 = new Account();
            a3.name = 'PI Test';
            a3.Industry = 'Banking';
            a3.type = 'Customer - Direct';
            listAcc.add(a3);
        }
        insert listAcc;
        AccountsQueueableExample aq = new AccountsQueueableExample(listAcc);

        test.startTest();
        ID jobID = system.enqueueJob(aq);
        test.stopTest();

        List<Account> accounts = [select name from account where name like '%SI%'];
        system.assertEquals(500, accounts.size());
    }
}
