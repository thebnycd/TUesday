trigger LeadTrigger on Lead (before insert) {
    if (trigger.isBefore && trigger.isInsert) {
        LeadTriggerHandler.leadSourceWeb(trigger.new);
    }
}