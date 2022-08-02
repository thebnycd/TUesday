public  class Dml_multipleUpdate {
    //update multiple accounts
    public static void dmlMultipleRecordUpdate_right(){
        //add all the accounts which we want to update in this list
        List<account> updateAccounts = new List<account>();
        //fetch all account
        List<Account> listAccount = [select name from account];
        for(account eachAccount: listAccount){
            eachAccount.Name += 'Azat';
            updateAccounts.add(eachAccount);
        }

        if (!updateAccounts.isEmpty()){
            update updateAccounts;
        }
    }
}
