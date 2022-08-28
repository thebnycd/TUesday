trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('====Trigger START====');
    if(trigger.isBefore){
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

    if (trigger.isAfter && trigger.isUpdate ) {
        AccountTriggerHAndler.updateVIPForAllContacts(Trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }

    if (trigger.isAfter && trigger.isInsert) {
        // AccountsQueueableExample aq = new AccountsQueueableExample (trigger.new);
        // Id jobId = system.enqueueJob(aq);
        // system.debug('job id is ....' + jobId);
    }

    // if(trigger.isbefore && trigger.isUpdate){
    //     AccountTriggerHandlerPractice.validationAnnualRev(trigger.new, trigger.oldMap);
    // }

    system.debug('====Trigger END====');
    /*
        if(trigger.isAfter && trigger.isUpdate){
        Integer countWebSiteUpdate = 0;
    map<id, Account> trgOldMap = trigger.oldMap;
    map<id, Account> trgNewMap = trigger.newMap;

    set<id> accIdSet = trgNewMap.keySet();

    for (ID eachId : accIdSet) {
        account newACc = trgNewmap.get(eachId);
        string newWebSite = newACc.Website;

        account oldAcc = trgOldMap.get(eachId);
        String oldWebSite = oldAcc.Website;

        if (newWebSite != oldWebSite) {
            system.debug('Acc Name: ' + newAcc.Name + ', website is changed TO ===> ' + newWebsite);
            countWebSiteUpdate++;
        }
    }
    system.debug('COunt of webSiteupdated  accounts ==> ' + countWebSiteUpdate);

}


        if (trigger.isBefore && trigger.isInsert) {
        system.debug('===BRFORE INSERT====');
        system.debug('Old Map ==> ' + trgOldMap);
        system.debug('New Map ==> ' + trgNewMap);
    }

    if (trigger.isAfter && trigger.isInsert) {
        system.debug('===BRFORE INSERT====');
        system.debug('Old Map ==> ' + trgOldMap);
        system.debug('New Map ==> ' + trgNewMap);
    }

    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('===BRFORE INSERT====');
        system.debug('Old Map ==> ' + trgOldMap);
        system.debug('New Map ==> ' + trgNewMap);
    }

    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('===BRFORE INSERT====');
        system.debug('Old Map ==> ' + trgOldMap);
        system.debug('New Map ==> ' + trgNewMap);
    }

        if (trigger.isAfter && trigger.isUpdate) {
        List<Account> oldAcc = trigger.old;
        List<Account> newAcc = trigger.new;

        //OLD FOR EACH LOOP
        for(Account oldAccount: oldAcc){
            system.debug('Old account di: ' + oldAccount.id + ', old account name ' + oldAccount.name);
        }
        //NEW FOR EACH LOOP
        for(Account newAccount: newAcc){
            system.debug('NEW account id: ' + newAccount.id + ', new account name ' + newAccount.name);
        }
    }


        if (trigger.isBefore && trigger.isInsert){
        system.debug('BEFORE INSERT trigger old ' + trigger.old);
    }

    if(trigger.isAfter && trigger.isInsert){
        system.debug('AFTER INSERT trigger old ' + trigger.old);

    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update trigger trigger.old = ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger trigger.old = ' + trigger.old);
    
    }
    
}

    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('after insert trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger trigger.new = ' + trigger.new);
    }*/
   

    /*List<account> newAccounts = trigger.new; //is LIST<sObject>
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after trigger trigger.new = ' + newAccounts);
        system.debug('size of trigger.new = ' + newAccounts.size());

        for (account eachAcc : newAccounts) {
            system.debug('account id is ' + eachacc.id + ', each account name is ' + eachAcc.name);
        }

    } */
    
    /*
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    //INSERT
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('After Insert trigger called.');
    }
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('Before Insert trigger called.');
    }

    //UPDATE
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('After Update trigger called.');
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('Before Update trigger called.');
    }
    
    
    */
    /*
    //this should print only in BEFORE.
    if(Trigger.isBefore){
        system.debug('Before INSERT trigger called');
    }
    if(Trigger.isAfter){
        //this should print only in AFTER.
        system.debug('After INSERT trigger called');
    }

    */
}