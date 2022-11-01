@isTest
public class CalculatorTest {
    @isTest
    private static void testPrintMethod() {
        Calculator calc = new Calculator();
        calc.printNewMessage('Callin from test method.');
        calc.printAndReturnMessage('Calling from test method.so chill.');

    }
}
