@isTest
public class SPTriggerHandlerTest {
    @isTest
    public static void testMethod1() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Teach DML to falcons';
        sp.Description__c = 'All are great learners';

        test.startTest();
        insert sp;
        test.stopTest();

        List<Salesforce_Project__c> listSP = [select id, description__c FROM Salesforce_Project__c];
        system.assert(listSP[0].Description__c.contains('future'));
    }
}
