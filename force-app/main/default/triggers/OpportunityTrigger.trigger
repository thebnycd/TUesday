trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update) {
    if(trigger.isBefore && trigger.isUpdate){
        OpportunityTriggerHandler.updateOppName(trigger.new, trigger.oldMap);
        OpportunityTriggerHandler.updateOppDesc(trigger.new, trigger.oldMap);
    }

}