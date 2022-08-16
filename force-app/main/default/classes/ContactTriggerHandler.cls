public class ContactTriggerHandler {
    public static void ContactTriggerHandler(List<Contact> conTriggerNew, 
                                            Map<Id,contact> conTriggerNewMap,
                                            List<Contact> conTriggerOld,
                                            Map<Id,Contact> conTriggerOldMap) {

        for (contact eachContact : conTriggerNew) {
            if (eachContact.LeadSource == 'Partner Refferal') {
                eachContact.addError('Cannot update PArtner Refferal Contact'); //validation Rule
            }
        }
    }

    public static void updateAccountRollUpField(set<id>accountIds) {
        List<Account> listAccounts = [select id, number_of_contacts__c, (select id from Contacts) from account WHERE id in: accountIds];
        for(account eachAccount : listAccounts){
            List<Contact> accContacts = eachAccount.Contacts;
            //get number of contact
            integer numOfContacts = accContacts.size();
            eachAccount.number_of_contacts__c = numOfContacts;
        }
        update listAccounts;
    }
}
