public  class OpportunityTriggerHandler {
    public static void updateOppName(list<opportunity> newList, map<id,opportunity> oldMap) {
        for (Opportunity eachOpp : newList) {
            system.debug('Old Nmae ' + oldMap.get(eachOpp.Id).name);
            system.debug('Old Amound ' + oldMap.get(eachOpp.id).Amount);
            system.debug('New Name ' + eachOpp.Name);
            system.debug('New Amount ' + eachOpp.Amount);
        }
    }
    public static void updateOppDesc(list<opportunity> newList, map<id,opportunity> oldMap) {
        for (opportunity eachOpp : newList) {
            if (eachOpp.StageName != OldMap.get(eachOpp.id).StageName) {
                system.debug('Description ' + eachOpp.Description + ', Opportunity name ' + eachOpp.Name);
            }
        }
    }
}
