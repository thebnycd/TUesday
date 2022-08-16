public with sharing class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountWebsite(List<id>accIds) {
        List<Account> listAcc = [select id, website FROM Account WHERE id in :accIds];
        for (account eachAcc : listAcc) {
            eachAcc.Website = 'www.softinnovas.com';
        }
        update listAcc;
    }
}
