trigger ContactTrigger on Contact (before insert, before update,  after insert, after update, after delete, after undelete){
    system.debug('====Trigger START====');
    //create a set of ids to store account ids
    //account id of all updated/inserted/deleted/undeleted contact ids
    if (Trigger.isBefore && trigger.isUpdate) {
        ContactTriggerHandler.contactUpdateValidation1(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
        ContactTriggerHandler.contactUpdateValidation2(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
    }
    
    if(trigger.isAfter){
        Set<Id> accountIds = new set<id>();

        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact eachContact : trigger.new) {
                if (eachContact.AccountId != null) {
                    accountids.add(eachContact.AccountId);
                }
            }
        }

        //updated or deleted then get the OLD ACCOUNT ID.
        if (trigger.isUpdate || trigger.isDelete) {
            for(contact eachContact: trigger.old){
                if (eachContact.AccountId != null) {
                    accountids.add(eachContact.AccountId);
                }
            }
        }

        //HERE we call handler method
        ContactTriggerHandler.updateAccountRollUpField(accountIds);
    }
    system.debug('====Trigger END====');
    /*
    List<account> newAccounts = trigger.new;
    if(trigger.isAfter){
        system.debug('after trigger trigger.new = ' + newAccounts);
        system.debug('size of trigger.new = ' + newAccounts.size());
    }


    if (trigger.isBefore) {
        system.debug('Before Trigger');
    }

    if (trigger.isAfter) {
        system.debug('After trigger');
    }

    if (trigger.isAfter) {
        system.debug('After trigger');
        if (trigger.isInsert) {
            system.debug('After Insert Trigger');
        }

        if (trigger.isUpdate) {
            system.debug('After UPDATE trigger');
        }
    }
    */
}