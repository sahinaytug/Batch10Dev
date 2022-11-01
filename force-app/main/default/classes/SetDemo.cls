public  class SetDemo {
public static void citySet(){

        //data type
    set <String>  cities       =     new    Set<String>();
    cities.add('Tokyo');
    cities.add('Lisbon');
    cities.add('Berlin');
    cities.add('Nairobi');
    cities.add('Tokyo');
    cities.add('Berlin');
    cities.add('Nairobi');
    cities.add('TOKYO');
    system.debug('Citi set' + cities);
    }
    public static void rondomIntegerSet(){

        //     data type
        set <Integer>  rondomIntegers     =     new    Set<Integer>();
        rondomIntegers.add(10);
        rondomIntegers.add(21);
        rondomIntegers.add(15);
        rondomIntegers.add(15);
        rondomIntegers.add(15);
        rondomIntegers.add(15);
        system.debug('Rondom integer set' + rondomIntegers);       
    }
    public static set<Integer> setFromList(List<Integer> l1){
        set<integer> s1 = new set<integer>();
        //aff all the elements from the l1 to a new list
        //RETURN that NEW SET<INTEGER> 
        s1.addAll(l1);
        return s1;
        
    }
    public static void capitalizeAllSet(){
        //create set 
            //convert each element to UPPERCASE
            //AND ADD IT IN A NEW LIST
        //A NEW LIST
        Set<String> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
       
        system.debug('Citi set' + cities);

        set<string> citiesInCaps = new set<string>();
        for (string  eachCity : cities) {
            String tempStr = eachCity.toUpperCase();
            citiesInCaps.add(tempStr);   
        }
        system.debug('Cities in capital' + citiesInCaps); 
    }   
}
