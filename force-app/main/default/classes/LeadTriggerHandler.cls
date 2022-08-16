public class LeadTriggerHandler {
    public static void leadSourceWeb(List<Lead> newLead) {
        for (Lead eachLead : newLead) {
            if (eachLead.LeadSource == 'Web') {
                system.debug('Rating should be Cold');
            }else{
                system.debug('Rating should be hot');
            }
        }
    }
}
