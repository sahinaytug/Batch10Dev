public class DmlDemo {
    public static void dmlInsertDemo_stndObj1 () {
        //Create new instance of sObject
        Account acc = new Account();
        //Set fields
        acc.Name = 'SoftInnovas';
        //Set other fields
        acc.Phone = '546148461546';
        insert acc;

    }

    public static void dmlInsertDemo_cstomObj() {   
        //Create new instance 
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Teach Dml to bacth 10';
        sp.Description__c = 'We are okay';
        sp.Status__c = 'New';
        //Insert Dml
        insert sp;

    }
    
    public static void dmlUpdateDemo1() {
        
        Account acc = new Account();
        acc.Name = 'Anything';
        system.debug('Before inserting -?> ' + acc);
        insert acc;
        system.debug('After inserting ->?.> ' + acc);

        //Update account name

    acc.name = 'SofInnovas Inc';
    update acc;
    system.debug('After updating ->?> ' + acc);

    }

    public static void dmlUpdateDemo2() {

    //Soql returns account bcz limit 1

    account acc = [select id, name from account where name = 'Soft Innovas.' limit 1]; // Limit one is optinal
        //Update name 

        acc.name = 'Soft Innovas.';
        acc.phone = '8732823827'; 
        update acc;

    }
}
