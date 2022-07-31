public  class SOQLDemo {
    public static void accounSOQL_1(){
        List<Account> listAcc = [Select Id, name, Active__c from Account where name like '%A%'];
        system.debug('listAcc = ' + listAcc);
        system.debug('size of listAcc = ' + listAcc.size());

        //if we fetch only 1 record, we can store it in 'Account' instead of LIST<account>
        Account acc = [select name, createdDate from account ORDER BY CreatedDate DESC LIMIT 1];
        System.debug('last created account record = ' + acc);
        
    } 

    public static void accountSOQL_2(){
        Account acc = [select name, createdDate, phone, AccountNumber from account ORDER BY CreatedDate DESC LIMIT 1];
        string accountName = acc.Name;
        String accountPhone = acc.Phone;
        System.debug('account name is ' + accountName + ', phone is ' + accountPhone);
        system.debug('account number is ' + acc.AccountNumber);
    }

    public static void accountSOQL_3(){
        List<account>  listAcc = [Select name, phone, accountNumber from Account ORDER BY CreatedDate DESC];
        For(Account eachAccount: listAcc){
            string accountName = eachAccount.Name;
            String accountPhone = eachAccount.Phone;
            System.debug('account name is ' + accountName + ', phone is ' + accountPhone);
            system.debug('account number is ' + eachAccount.AccountNumber);
        }
    }

    public static void accountSOQL_Filter(string accNameFilter) {
        List<Account> listAcc = [select name, phone from account where name = :accNameFilter];
        system.debug('filtered accounts are ' + listAcc);
    }
}
