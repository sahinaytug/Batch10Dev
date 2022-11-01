public  class PrimitiveDataTypeDemo2 {
//     public void printNewDate(){
//         system.debug('create new date instance');

//         Date newDate1 = Date.newInstance(1995, 2, 17);
//         system.debug('newDate1-->' + newDate1);

//         Date newDate2 = Date.newInstance(2022, 10, 7);
//         system.debug('newDate2-->' + newDate2);

//         Date todayDate = date.today();
//         system.debug('today\' date' + todayDate);
//     }
//     public void   printNewTime(){
//         Time myTime = Time.newInstance(18, 20, 2, 30);
//         Time myTime2 = Time.newInstance(15, 15, 2, 10 );
//         system.debug('myTime' + myTime); 
//         system.debug('myTime2' + myTime2);  

//     }

//     public void printNewDateTime(){
//         //today's date
//         date newDate = date.today();
//         //new time
//         time newTime = time.newInstance(9, 8, 0, 0);
//         time trytime = time.newInstance(23, 23, 23, 23);
//         system.debug(trytime);
//         //1.create new tadetime FROM DATE TIME
//         Datetime dt1 = datetime.newInstance(newDate, newTime);
//         system.debug('dt is ' + dt1);

//         //2.create datetime using YEAR, MONTH, DAY, => Time will be midnight(0000).
//         datetime dt2 = datetime.newInstance(2025, 1, 9);
//         system.debug('dt2 is ' + dt2);

//         //3.create datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND.
//         datetime dt3 = datetime.newInstance(2021, 10, 9, 10, 10, 10);// it creates new instance in pacific timezone
//         system.debug('dt3 is ' + dt3);// it displays user time GMT

       
//     }
//     // //4. CREATE newInstance from milliseconds
//     // //Construct a new datetime using milliseconds since Jan 1 1970 00:00:00 GMT.
//     // long longtime = 1341828183000L;
//     // DateTime dt4 = DateTime.newInstance(longtime);

// //     // //5.create GMT datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND.
// //     // DateTime dt5 = DateTime.newInstanceGMT(1998, 1, 28 ,18, 2, 3);

// //     // //6.Current time
// //     // DateTime dt6 = datetime.now(); 

// //     // system.debug('dt4is ' + dt4)
// //     // system.debug('dt5 is ' + dt5)
// //     // system.debug('dt6 is ' + dt6)


// // }
// public class PrimitiveDataTypeDemo2 {
//    public void printNewDate(){
//        system.debug('create new date instances');
//        //new date instance using YEAR, MONTH, DAY
//        Date newDate1 = Date.newInstance(1999, 2, 17);
//        system.debug('newDate1 --> ' + newDate1);
//        Date newDate2 = Date.newInstance(2022, 3, 18);
//        system.debug('newDate2 --> ' + newDate2);

//        Date todayDate = date.today();
//        system.debug('today\'s date' + todayDate);
//    }

//    public void printNewTime(){
//         //new time using HOUR, MINUTE, SECOND, MILLI SECONDS
//         time mytime = time.newInstance(18, 9, 30, 25);
//         time mytime2 = time.newInstance(7, 9, 8, 15);
//         system.debug('mytime ->' + mytime);
//         system.debug('mytime2 ->' + mytime2);
//    }

//    public void printNewDateTime(){
//        Date todayDate = date.today();
//        time mytime = time.newInstance(18, 9, 30, 25);
//        //1. new datetime using DATE and TIME
//        Datetime dt1 = Datetime.newInstance(todayDate, myTime);
//        system.debug('dt1 --> ' + dt1);

//        //2. new datetime using YEAR, MONTH, DAY
//        DateTime dt2 = Datetime.newInstance(2025, 9, 14); //Time will be midnight.
//        //It takes midnight for OUR USER's TIMEZONE (pacific)
//        system.debug('dt2 --> ' + dt2);//But, when it prints, it prints GMT. (+7 of pacific)

//        //3. new datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND
//        Datetime dt3 = Datetime.newInstance(2022, 4, 15, 8, 8, 8); //it creates new instance in Pacific timezone.
//        system.debug('dt3 --> ' + dt3);//it displays in gmt timezone

//        //4. with longTime
//        Long longTime1 = 0;
//        datetime dt4 = datetime.newInstance(longTime1);

//        Long longTime2 = 1387845643214L;
//        datetime dt5 = Datetime.newInstance(longTime2);
//        system.debug('dt4 --> ' + dt4);
//        system.debug('dt5 --> ' + dt5);

//            //5.create GMT datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND.
//         datetime dt6 = datetime.newInstanceGMT(2022, 4, 14, 8, 8, 8);
//         system.debug('dt6-->' +dt6 );

//          //6.Current time
//         DateTime dt7 = datetime.now(); 
//         system.debug('dt7-->' +dt7 );

       
//    }

public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
                                    //YEAR, MONTH, DAY
        date birthdate = date.newInstance(1990, 10, 9);
        date todayDate = date.today();

        integer ageInMonths = birthdate.monthsBetween(todayDate);
        system.debug('Sahin age is months is ' + ageInMonths);
        
    }
    public void calculateAgeInDays(){
        date birthdate = date.newInstance(1990, 10, 9);
        date todayDate = date.today();

        integer ageIndays = birthdate.daysBetween(todayDate);
        system.debug('Sahin age is days is ' + ageIndays);
    }
    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();
        
        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription end date is .... ' + subscriptionEndDate);
    }
}