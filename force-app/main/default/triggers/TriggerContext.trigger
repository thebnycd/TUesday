trigger TriggerContext on Account (before insert, after insert, before update, after update) {
    System.debug('=====Start====');
    //INSERT
    if(trigger.isBefore && Trigger.isInsert){
        system.debug('before insert trigger called.');
    }   

    if(trigger.isAfter && trigger.isInsert){
        system.debug('after insert trigger called');
    }

    //UPDATE
    if(trigger.isBefore && Trigger.isUpdate){
        system.debug('before Update trigger called.');
    }   

    if(trigger.isAfter && trigger.isUpdate){
        system.debug('after update trigger called');
    }
    system.debug('====END====');
}