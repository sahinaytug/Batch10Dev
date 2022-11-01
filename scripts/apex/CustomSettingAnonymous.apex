//How TO FETCH RECORDS FROM CUSTOM SETTINGS?
//1. SOQL 
//2. USE getAll() and getInstance() methods. only custom settings

//Map<id, account>-->
//NAME -->Country_code__c RECORD
Map<string, Country_code__c> allCountryCode = Country_code__c.getAll();
System.debug(allCountryCode);


//Canada iso code is CAN

for(String eachCountry : allCountryCode.keySet()){
    Country_code__c eacAcc = allCountryCode.get(eachCountry);
    System.debug(eachCountry + 'iso code is ...' + eacAcc.iso_code__c);
}

String c1 = 'United States';
Country_code__c c1code = Country_code__c.getInstance(c1);
string isoCodeC1 = c1code.iso_code__c;
System.debug(c1 + 'iso code is ..' + isoCodeC1);

String c2 = 'Canada';
System.debug(c2 + 'iso code is ..' + Country_code__c.getInstance(c2).iso_code__c);
