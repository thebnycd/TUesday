trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    
    if (trigger.isAfter && trigger.isInsert) {
        Map<id, Salesforce_Project__c> spNewMap = trigger.newMap;
        Set<id> setID = spNewMap.keySet();
        SalesforceProjectHandler.updateProjectDescription(setID);
        //call handler method here.
        SalesforceProjectHandler.createDefaultSalesforceTicket(Trigger.New);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        //SalesforceProjectHandler.validateProjectCompletion(Trigger.New, Trigger.NewMap, Trigger.OldMap);
    }

    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectHandler.spCompleteStatus(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }
}