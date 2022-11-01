public  class CalculatorSimple {
    public static integer add(integer a, integer b){
        integer result = a + b;
        return result;
    }

    public static integer add(integer a, integer b, Integer c){
        System.debug('Inside add method  with 3 params');
        integer result = a + b + c;
        return result;
    }
   
}
