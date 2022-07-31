public  class DmlDemo {
    public static void dmlInsertDemo_stndObj(){
        //1. Creating new instance of account sObject
        Account acc = new account();
        //2. set field values
        acc.Name = 'SoftInnovas';
        //3. set few other fields here...
        
        //4. Now comes the DML
        insert acc;
        system.debug(acc);
        //print it
    }
    public static void dmlInsertDemo_cstmObj(){
        salesforce_project__c sp = new salesforce_project__c();
        sp.profect_name__c = 'Teach DML to falcons';
        sp.description__c = 'All 40% are great learners';
        insert sp;
        system.debug(sp);

    }
}
