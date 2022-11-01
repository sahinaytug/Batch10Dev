public class AccountsBatch implements Database.Batchable<sObject>, Database.stateful{
    Integer count = 0;
    //1.start method
    public database.QueryLocator start(Database.BatchableContext bc){
        //SOQL TO FETCH RECORDS
        //on account records
        System.debug('Batch started.');
        Database.QueryLocator ql = Database.getQueryLocator([select id, description from account]);
        return ql;
    }
    public void execute(Database.BatchableContext bc, List<Account> scope){
        System.debug('We are in execute method NOWW');
        for (account acc : scope) {
            acc.Description += '...updated via batch';    
        }
        count++;
        System.debug('Count is ' + count);
        update scope;
    }
    public void finish(Database.BatchableContext bc){
        System.debug('batch execution finished . Done. Simple? Right? Absolutely');
        System.debug('Total number of count is' + count);
    }
}
