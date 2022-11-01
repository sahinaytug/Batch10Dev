public with sharing class AccountSchedulable implements Schedulable{
    public void execute (SchedulableContext sc) {
        //you can write here any apex code 
        //you can call handler , or future method , or queduable , or batch or ANYTHING
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab);

    }
}
