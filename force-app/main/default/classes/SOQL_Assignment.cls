public  class SOQL_Assignment {
    public static void soql_WhereClause(){
        List<Contact> IsContact = [select id, firstname, lastname FROM Contact WHERE LastName  LIKE '%A%'];
        system.debug(IsContact);
        system.debug('size is ' + IsContact.size());
    }

    public static void soql_formethod(){
        list<Contact> lstContact = [select LastName, Phone FROM Contact];
        for(contact eachContact: lstContact){
            string contactLastName = eachContact.LastName;
            string contactPhone = eachContact.Phone;
            system.debug('The contact/s LAst NAme is: ' + contactLastName + ' and its phone Number: ' +  contactPhone);
        }
    }
}
