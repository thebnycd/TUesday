public class SalesforceProjectHandler {
    public static void validateProjectCompletion(List<Salesforce_Project__c> spTriggerNew, 
                                                Map<id, salesforce_project__C> spTriggerNewMap,  
                                                Map<id, salesforce_project__C> spTriggerOldMap){
        //find all the project which are completed
        Set<id> setCompletedProjectIds = new Set<id>();
        for (salesforce_project__c eachNewSp : spTriggerNew) {
            //check if project's status field is marked as completed.
            //how do we check that?
            //compare old status value and new status value.
            //if not same, then status field is changed.
            salesforce_project__c oldSP = spTriggerOldMap.get(eachNewSP.id);
            if(oldSP.Status__c != eachNewSP.Status__c && eachNewSP.Status__c == 'Completed'){
                setCompletedProjectIds.add(eachNewSP.Id);
            }
        }
        //fetch all tickets of COMPLETED project
        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from                   
                                            Salesforce_Ticket__c WHERE Salesforce_Project__c in 
                                            :setCompletedProjectIds and (status__c != 'Completed' or status__c != 
                                            'Cancelled')];
        // loop all tickets and if the ticket is FOUND then feth ptoject from NewMap to addError
        for (salesforce_ticket__c eachST : listST) {
            Salesforce_Project__c spNew = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            spNew.addError('Cannot COMPLETE Project. Please complete all its ticket then come back.');  
        }
    }
} 