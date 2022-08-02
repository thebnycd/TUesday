trigger AccountTrigger on Account (before insert, after insert) {
    system.debug('===Trigger START===');
    //this should be print only before
    if(trigger.isBefore){
    System.debug('Before INSERT trigger called');
    }
    //this should print onle after
    if(trigger.isAfter){
    System.debug('AFTER trigger called');
    }
    system.debug('===Trigger END====');
}