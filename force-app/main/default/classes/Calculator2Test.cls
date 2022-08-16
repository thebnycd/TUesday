@isTest
public class Calculator2Test {
    @isTest
    private static void testmethod1() {
        //we test our actual method
        string returnMsg = Calculator2.printAndReturnMessage('This is from test');
        //this is from test... Ok cool
        system.assertEquals('This is from test... Ok Cool', returnMsg);
    }
    @isTest
    private static void testMethodAdd1() {
        integer sum1 = Calculator2.add(15, 150);
        //to verify we do asserts
        system.assertEquals(165, sum1);
    }

    private static void testMethodAdd2() {
        integer sum1 = Calculator2.add(10, 40, 10);
        system.assertEquals(60, sum1);
    }
}