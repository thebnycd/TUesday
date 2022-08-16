trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    
    if (trigger.isBefore && trigger.isUpdate) {
        SalesforceProjectHandler.validateProjectCompletion(Trigger.New, Trigger.NewMap, Trigger.OldMap);
    }
}