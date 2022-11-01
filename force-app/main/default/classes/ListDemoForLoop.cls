public class ListDemoForLoop {
    public static void iterateIntegerList() {
        List<Integer> ListInteger = new List<Integer>();
        ListInteger.add(15);
        ListInteger.add(21);
        ListInteger.add(10);
        ListInteger.add(15);
        ListInteger.add(15);

        for (integer eachInteger  : ListInteger) {
            System.debug(eachInteger);
            
        }
    }

    public static Integer add(List<Integer> intList){
        integer returnSUM = 0;
        //List -> 10, 15, 20, 10
        for(Integer eachInt : intList){
            System.debug('BEFORE r = ' + returnSUM);
            System.debug('eachInt r = ' + eachInt);
            returnSUM += eachInt;
            System.debug('After adding r = ' + returnSUM);
              
        }
        return returnSUM;
    }
}
