public with sharing class AccountsQueueableExample {
    List<Account> listAcc= new List<Account>();
    public AccountsQueueableExample(List<Account> accs){
        listAcc = accs;
    }
    public void execute(QueueableContext qc){
        for (account acc : listAcc) {
            acc.Name += '--SI';
        }
        update listAcc;
    }
}
