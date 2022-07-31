public class DatetimeMethodsDemo2 {
    public void printSubscriptionEndDate(){
        //subs start date as TODAY
        Date subscriptionStartDate = date.today();


        //end date is after 1000 days
        Date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subs end date is ' + subscriptionEndDate);

        //get year and month of End date and print it
        integer endDateYear = subscriptionEndDate.year();
        system.debug('subs end date year is ' + endDateYear);

        Integer endDateMonth = subscriptionEndDate.month();
        system.debug('subs end date moth is ' + endDateMonth);
    }

    public void offerEndDateTime(){
        //current datetime
        Datetime offerStartdt = Datetime.now();

        //offer end datetime
        Datetime offerEndDt = offerStartdt.addHours(51);
        system.debug('Offer end datetime is ' + offerEndDt);

    }
}
