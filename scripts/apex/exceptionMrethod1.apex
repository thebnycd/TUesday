try{
    Account acc = new Account();
    insert acc;
}catch(Exception ex){
    system.debug('something went wrong buddy');
}

system.debug('Apex is simple');