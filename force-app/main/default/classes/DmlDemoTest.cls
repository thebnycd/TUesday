@isTest
public  class DmlDemoTest {
    @isTest
    private static void testInsertDML1() {
        //call the method
        DmlDemo.dmlInsertDemo_stndObj();
        //how to verify if this method created a record or NOT?
        //assert.
        //what do we write in assert? SOQL
        List<Account> checkAcc = [select id, name from Account]; //how many records?
        system.assertEquals(1, checkAcc.size());
        System.assertEquals('SoftInnovas', checkAcc[0].Name);

    }
}
