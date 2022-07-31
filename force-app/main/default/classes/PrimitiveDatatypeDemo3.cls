public  class PrimitiveDatatypeDemo3 {
    public void printNewDate(){
        system.debug('create new Date instance');
        //create date
        Date newDate = Date.newInstance(1995, 2, 17);
        Date newDate2 = Date.newInstance(2021, 10, 7);
        // to get today's date use date.today() method
        Date todayDate = date.today();

        system.debug('new date is ' + newDate);
        system.debug('new dat2 is ' + newDate2);
        system.debug('todays date is ' + todayDate);
    }                                           //date

    public void printNewTime(){
        Time myTime = time.newInstance(13, 00, 30, 30);
        Time metime = time.newInstance(6, 00, 00, 00);

        system.debug('my time is ' + myTime);
        system.debug('me time is ' + metime);
    }                                            //time

    public void printNewDateTime(){
        //create new datetime instances
        date date1 = date.today();          //date
        time time1 = time.newInstance(9,9,0,0);         //time

        //1. DateTime from DATE anda TIME.
        datetime dt1 = Datetime.newInstance(date1, time1);
        system.debug('Date and Time is ' + dt1);

        //2. Datetime from YEAR, MONTH, DAY --> time will be midnight.
        Datetime dt2 = Datetime.newInstance(2000, 02, 22);
        system.debug('Year, Month, Day ' + dt2);

        //3.crear datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND.
        Datetime dt3 = Datetime.newInstance(2021, 10, 9, 10, 10, 10);
        system.debug('YEAR, MONTH, DAY, HOUR, MINUTE, SECOND ' + dt3);

        //4. Create newInstance from milliseconds
        // Constuct a new datetime using millisecond since Jan 1 1970 00:00:00 GMT
        Long longtime = 134182813000L;
        DateTime dt4 = DateTime.newInstance(longtime);
        system.debug('LongTime is ' + dt4);

        //5.1 GMT time
        Datetime dt5 = Datetime.newInstanceGmt(2022,2,22,12,14,22);
        System.debug('GMT time is ' + dt5);

        //6. Current time
        Datetime dt6 = Datetime.now();
        System.debug('Current time is ' + dt6);
        
        //newInstance
        //create new datetime instance as pew user's timezone.
            //newInstanceGMT
        //Creates new datetime instance as per GMT - Greenwich mean time
            //displays in GMT 

        
    }                                              //date and time
}
