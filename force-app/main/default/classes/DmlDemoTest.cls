@isTest
public class DmlDemoTest {
    @isTest
    static void testDmlInsert1() {
        DmlDemo.dmlInsertDemo_stndObj1();
        //how to assert this?
            //soql.
        List<account> listAcc = [select id, name from account where name ='SoftInnovas'];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }

    @isTest
    static void dmlInsertDemo_cstomObj(){
        DmlDemo.dmlInsertDemo_cstomObj();
        List<Salesforce_Project__c> listSP = [select id, Project_Name__c FROM Salesforce_Project__c WHERE Project_Name__c = 'Teach Dml to bacth 10'];
        System.assertEquals(1, listSP.size());
        System.assertEquals('Teach Dml to bacth 10', listSP[0].Project_Name__c);
        
    }

    @isTest
    private static void dmlUpdateDemo1Test() {
        DmlDemo.dmlUpdateDemo1();
        List<account> listAccUpdate = [select id, name from account where name ='SofInnovas Inc']; 
        system.assertEquals(1, listAccUpdate.size());
        system.assertEquals('SofInnovas Inc', listAccUpdate[0].Name);
    }

    @isTest
     private static void dmlUpdateTest2(){
        DmlDemo.dmlUpdateDemo2();
        List<Account> acc = [select id, name from Account where name = 'Soft Innovas.'];

        System.assertEquals(1, acc.size());
        System.assertNotEquals('Soft Innovas.', acc[0].Name);
     }   
   
}