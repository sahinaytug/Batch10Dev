public with sharing class ListDemo {
    public static string  candidatesList(integer i) {
        //Creating empty list string
        //collection                     creating new intance
        //data typer  variable name      of List Class
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('List candidates =>' +listCandidates);
        
        string returnString = '';
        if(i >= 0 && i < listCandidates.size())
            returnString = listCandidates[i];
        else 
            returnString = 'No value found';

        //  string returnStr = listCandidates[i];
        return returnString;
    }

    public static void randomIntegerList(){
        List<Integer> ListInteger = new List<Integer>();
        ListInteger.add(15);//0
        ListInteger.add(21);//1
        ListInteger.add(10);//2
        ListInteger.add(15);//3
        ListInteger.add(15);//4

        Integer index3Value0 = ListInteger.get(0);
        System.debug('Index 0 value is ' +index3Value0);
        Integer index3Value1 = ListInteger.get(1);
        System.debug('Index 1 value is ' +index3Value1);
        Integer index3Value2 = ListInteger.get(2);
        System.debug('Index 2 value is ' +index3Value2);
        Integer index3Value3 = ListInteger.get(3);
        System.debug('Index 3 value is ' +index3Value3);
        Integer index3Value4 = ListInteger.get(4);
        System.debug('Index 4 value is ' +index3Value4);

        //or
        Integer index3Value5 = ListInteger[3];

        system.debug('List integer ===>' + ListInteger);
    }

    public static void allCat(){
        Cat siCat = new Cat('fluffkins', 'white');
        Cat vk = new Cat('fTom', 'black');
        Cat myCat= new Cat('Masug', 'Boz');

        List<Cat> cats = new List<cat>();
        cats.add(siCat);
        cats.add(vk);
        cats.add(myCat);
        cats.add(siCat);
        cats.add(myCat);

        System.debug('All cats ==>' + cats);
        
        if (!cats.isEmpty()){
            cat catAt3 = cats[3];
            system.debug('Cat at 3 is ' + catAt3);
            
        }
    }
}
