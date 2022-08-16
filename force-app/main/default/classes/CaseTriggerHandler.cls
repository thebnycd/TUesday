public  class CaseTriggerHandler {
    public static void updateCaseOriginChaeck(list<case> newCaseList, 
                                            map<id, Case> oldMap) {
        for (case eachCase : newCaseList) {
            if(eachCase.Origin != OldMap.get(eachCase.id).Origin){
                system.debug('Case origin is changed for ' + eachCase.CaseNumber);
            }    
        }
    }
}
