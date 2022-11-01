public  class PlayingWithDates {
    public void printDateOutput(){
        date todayDt = date.today();
        system.debug(todayDt);

        date Dt2 = date.newInstance(2789, 11, 5);
        date Dt3 = date.newInstance(1459, 3, 4);

        integer dayInt = dt2.year();
        integer monthInt = dt2.month();
        integer yearInt = dt3.day();

        date newDate = date.newInstance(dayInt, monthInt, yearInt);
        system.debug(newDate);

    }
 
}
