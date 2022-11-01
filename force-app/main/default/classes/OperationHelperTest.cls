@isTest
public  class OperationHelperTest {
    @isTest
    private static void HelperTest() {
       Decimal returnMax = OperationHelperAsgn.largestOutOfTwoNumbers(5, 4);
       system.debug(returnMax);
       System.assertEquals(5, returnMax);

}

@isTest
private static void smalestTest(){
    Decimal d1d2d3Min = OperationHelperAsgn.smallestOutOfThreeNumbers(7,8,9);
    System.debug(d1d2d3Min);
    System.assertEquals(7, d1d2d3Min);
    
}

@isTest
private static void positiveTest(){
    Integer sum = OperationHelperAsgn.sumOfPositiveInteger(7,5,1,2);

    System.debug(sum);
    System.assertEquals(28, sum);
    
}
}