public  class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string method in apex language';
        system.debug('sessionDescription = ' + sessionDescription);

        //1.Length
        Integer strLen = sessionDescription.length();
        system.debug('The lenth ' + strLen);

        //2.convert to capital
        string sesDes = sessionDescription.toUpperCase();
        system.debug('in caps = ' + sesDes);

        //3.Contains 'apex'
        boolean containsApex = sessionDescription.contains('apex');
        system.debug('Contains apex?: ' + containsApex);
        //result true

        //3.1 contains 'salesforce'
        Boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('contains salesforce? ' + containsSalesforce);
        //result false

        
        //3.2 contains 'Apex'
        //when it comes to string, apex is case sensitive 
        Boolean containsApex2 = sessionDescription.contains('APEX');
        system.debug('contains salesforce? ' + containsApex2);
        //result false

        //3.3 contains ignore case 'Apex'
        //when it comes to string, apex is case sensitive.
        //'ApEx', 'APEX', 'apex', 'Apex',
        Boolean containsApex3 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('contains Apex? ' + containsApex3);
        //result true
    }
}