trigger CaseTrigger on Case (before insert) {
    if(trigger.isInsert){
        system.debug('Before insert case trigger called');
        system.debug('Trigger size is ===> ' + trigger.size);
    }
    if (trigger.isUpdate) {
        system.debug('Before update case trigger called');
        system.debug('trigger size is ' + trigger.size);
        CaseTriggerHandler.countRecordsUpdated += trigger.size;
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('# of times trigger executed = ' + CaseTriggerHandler.countTriggerExecution);
        system.debug('# of total records updated = ' + CaseTriggerHandler.countRecordsUpdated);
    }

    if(trigger.isBefore && trigger.isUpdate){
        CaseTriggerHandler.updateCaseOriginChaeck(trigger.new, trigger.oldMap);
    }

}