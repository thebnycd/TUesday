public  class Datetime_assignment {
    public void diffoDate(){
        date tomorrowDate = date.newInstance(2022, 07, 18);
        date todaysDate = date.newInstance(2022, 07, 17);
        integer daysDifference = tomorrowDate.daysBetween(todaysDate);
        system.debug('There are difference ' + daysDifference + 'day(s).');
        
    }

    public void timeCheck(){
        Datetime varTomorrowDatetime = datetime.newInstance(2022, 07, 18, 07, 00, 00);
        Datetime var10DaysDatetime = datetime.newInstance(2022, 07, 28, 09, 00, 00);
        Long varDatetimeLong = 12339874361L;
        Datetime add7days = varTomorrowDatetime.addDays(7);
        Datetime add10days = var10DaysDatetime.addDays(10);
        system.debug(add7days);
        system.debug(add10days);
    }
}
