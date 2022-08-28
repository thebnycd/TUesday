List<Account> listAcc = new List<Account>();
account a1 = new Account();
a1.name = 'SI Test';
a1.Industry = 'Banking';
a1.Type = 'Customer - Direct';
listAcc.add(a1);

account a3 = new Account();
a3.name = 'SI Test';
a3.Industry = 'Banking';
a3.Type = 'Customer - Direct';
listAcc.add(a3);

account a3x = new Account();
listAcc.add(a3x);

Account a3y = new Account();

List<database.SaveResult> results = Database.insert(listAcc, false);
system.debug('*****results ==> ' + results);
for (Database.SaveResult eachResult : results) {
    if (eachResult.isSuccess()) {
        system.debug('Account Inserted. Good Guy. Id is ' + eachResult.getId());
    }else{
        system.debug('Errors: ' + eachResult.getErrors());
    }
}