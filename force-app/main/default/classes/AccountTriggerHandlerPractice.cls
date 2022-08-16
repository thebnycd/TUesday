public  class AccountTriggerHandlerPractice {
    public static void validationAnnualRev(List<Account> newList, map<Id, Account> OldMap) {
        for (Account eachAcc : newList) {
            if (eachAcc.AnnualRevenue < OldMap.get(eachAcc.id).AnnualRevenue) {
                eachAcc.AnnualRevenue.addError('Annual Revenue for an account cannot be reduced');
            }
        }
    }
}
