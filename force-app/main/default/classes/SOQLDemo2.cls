public  class SOQLDemo2 {
    public static void childToParent_SOql1(){
        List<Contact> listCnt = [select id, name, account.name, account.industry FROM Contact WHERE Account.industry = 'Energy'];

        for(Contact eachContact: listCnt){
            string accName = eachContact.Account.name;
            system.debug('contact name is ' + eachContact.Name + 'its acc is ' + accName);
        }
    }
    public static void sampleSoql4(){
        List<Account> accountWithOpps = [select name, annualrevenue, (select amount, name from Opportunities where stageName = 'Closed Won') from account where type = 'Customer - Direct'];
        
        for (account eachAccount: accountWithOpps){
            system.debug('account name: ' + eachAccount.Name + ' and its revenue is ' + eachAccount.AnnualRevenue);
            //we want to fetch all opportunities in each account
            List<Opportunity> listOpp = eachAccount.Opportunities;
            for (Opportunity eachOpp: listOpp){
                system.debug('Opp Name: ' + eachOpp.Name + ', amount is ' + eachOpp.Amount);
            }
            system.debug('---------');
        }

    }
}