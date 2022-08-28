Map<string, coutry_code__c> mapCS = coutry_code__c.getAll();
//.getAll() --> returns the map of 'Name ' as KEY and Custom Setting Record as Value.
//KEY       VALUE
//Canada--> CAN
//Belgium --> BEL
Set<String> countries = mapCS.KeySet();
for (string eachCon : countries) {
    //country code field value here?
    coutry_code__C cs = mapCS.get(eachCon);
    string countryCode = cs.country_code__c;
    system.debug('Country is ' + eachCon + ', its code is ' + countryCode);
}

system.debug('map of country code custom setting --> ' + mapCS); 