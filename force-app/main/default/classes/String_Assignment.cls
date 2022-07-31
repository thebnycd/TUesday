public  class String_Assignment {
    public void stringMethod(){
    String Loclalstring = 'Thanks for the session on the string';
    
    Integer localLength = Loclalstring.length();
    system.debug('Length is: ' + localLength);

    string capital = Loclalstring.toUpperCase();
    system.debug('Upper case: ' + capital);

    boolean contain = Loclalstring.contains('session');
    system.debug('Check "session": ' + contain);

    boolean contain2 = Loclalstring.contains('SESSION');
    system.debug('Check "SESSION": ' + contain2);
}

}
