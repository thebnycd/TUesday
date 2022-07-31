Map<string, string>  mapCntCurrency = new map<string, string>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
mapCntCurrency.put('Germany', 'Euro');

system.debug(mapCntCurrency);

string IndiaCurrencu = mapCntCurrency.get('India');
//another way
string country = 'Turkey';
string CountryCurrency = mapCntCurrency.get(country);

system.debug('India Currency is ' + IndiaCurrencu);
system.debug('Country Currency is' + CountryCurrency);

//fetch all country 
Set<string> countrySet = mapCntCurrency.keySet();
system.debug('all countries ' + countrySet);

List<String> currencyList = mapCntCurrency.values();
system.debug('all currency ' + currencyList);

Set<String> countries = mapCntCurrency.keySet();
for(string eachKey: countries){
    String printString = 'Country is ' + eachKey;

    //fetch value (currency) for each KEY (country)
    string eachValue = mapCntCurrency.get(eachKey);
    printString += ', its currency is ' + eachValue;
    
    system.debug(printString);  
}