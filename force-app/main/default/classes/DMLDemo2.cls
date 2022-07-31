public class DMLDemo2 {
    public static void dmlUpdateDemo(){
        //1. fetch Record
        account acc = [select id, name, site FROM Account WHERE Name = 'SoftInnovas' limit 1];
        //2. update account
        acc.Name = 'SoftInnovas.inc';
        acc.site = 'www.softinnovas.com';

        //3. update DML
        update acc;
        system.debug('acc = ' + acc);
    }

    public static void dmInsertRelatedDemo_1(){
        //1. Fetch account
        account acc = [select id, name from account where name = 'SoftInnovas.inc' limit 1];

        //2. create contact's instance 
        Contact c = new Contact();
        c.LastName = 'Biden';
        c.AccountId = acc.id;
        insert c;
    }

    public static void dmInsertRelatedDemo_2(){
        Salesforce_Project__c sp = [select id, name from Salesforce_Project__c order BY CreatedDate DESC limit 1];

        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Learn DML in Apex';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.newInstance(2022, 7, 29);
        st.Salesforce_Project__c = sp.Id;

        insert st;
        System.debug('st = ' + st);
    }

    public static void dmlMultipleRecordInsert_right(){
        //1. create list of sObject
        list<Account> listAcc = new list<account>();

        //2.create first instance 
        Account a = new Account();
        a.name = 'bulk acc1';
        listAcc.add(a);
        
        Account a1 = new Account();
        a1.name = 'bulk acc 2';
        listAcc.add(a1);
        
        account a2 = new account();
        a2.name = 'bulk acc 3';
        listAcc.add(a2);

        account a3 = new account();
        a3.name = 'bulk acc 4';
        listAcc.add(a3);

        insert listAcc;
    }

    public static void dmlMultipleRecordInsert_right2 (){
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
    }
}
