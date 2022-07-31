public class DatetimeMethodsDemo {
    public void calculateAgeMonth(){
        date d1 = date.newInstance(1999, 09, 26);
        date today = date.today();
        integer ageInMonth = d1.monthsBetween(today);
        system.debug('My age in Month ' + ageInMonth);
    }
}
