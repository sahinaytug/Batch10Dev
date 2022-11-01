//map (collection)

Map<String,String>  mapCountryCurrency = new Map<String,String>();
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('Turkiye', 'Lira');
System.debug('map of country vs currency:' + mapCountryCurrency);



String IndiaCurrency = mapCountryCurrency.get('India');
String TurkeyCurrency = mapCountryCurrency.get('Turkiye');

system.debug('IndiaCurrency = ' + IndiaCurrency);
system.debug('TurkeyCurrency = ' + TurkeyCurrency);


Set<String> allCountries = mapCountryCurrency.keySet();
system.debug('all countries' + allCountries);

list<String> allCurrencies = mapCountryCurrency.values();
system.debug('all currencies' + allCurrencies);

Set<String> countries = mapCountryCurrency.keySet();
system.debug('all countries' + countries);
for(String eacCountry: countries){
    system.debug('all countries' + eacCountry);
    string eachCurrency = mapCountryCurrency.get(eacCountry);
    system.debug('each currencies' + eachCurrency);
    system.debug('----------------');
}