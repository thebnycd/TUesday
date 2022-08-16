@isTest
public  class DmlDemo2Test {
    @isTest
    private static void testUpdateMultiple() {
        //1. Prepare DATA (more than 200)
        List<Account> listAccount = new  List<Account>();

        for (integer i = 0; i<200; i++){
            account acc = new Account();
            acc.name = 'SoftInnovas 29July v'+i;
            acc.AccountNumber = 'Accis-' + i;
            acc.Active__c = 'Yes';
            listAccount.add(acc);
        }
        system.debug('size of list = ' + listAccount.size());
        if (!listAccount.isEmpty()) {
            insert listAccount;
        }

        //2. CAll method
        DMLDemo2.dmlMultipleRecordInsert_right();

        //3. verify using asserts
        // fetch accounts via soql
        list<Account> accounts =[select id, name from account];
        system.assert(accounts[0].Name.contains('SoftInnovas'));
    }
}
