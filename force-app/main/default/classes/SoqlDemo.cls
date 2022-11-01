// public  class SoqlDemo {
//     public static  void accountSOQL_1(){
//         //SOQL query returns List<sObject>
//         List<Account> listAcc = [Select ID, Name, 
//         phone, active__c from Account WHERE Name like '%A%'];
//         system.debug('Account list' + listAcc);
//         system.debug('# of list' + listAcc.size());

//         Account acc = [select id, name, phone from Account ORDER BY CreatedDate DESC LIMIT 1];
//         system.debug('account number is' + acc);
        
//     }

//     public static  void accountSOQL_2(){
//         Account acc = [Select ID, Name, phone,  AccountNumber from account ORDER BY CreatedDate DESC LIMIT 1];
//         system.debug('ACC IS ' + acc);
      
//         String accName = acc.Name;
//         String accPhone = acc.Phone;
//         system.debug('acc name is' + accName);
//         system.debug('acco phone is' + accPhone);
//         system.debug('acc account number  is' + acc.AccountNumber);
//         system.debug('account number is');

//     }
    
//     public static  void accountSOQL_3(){
//         List<Account> listAcc = [Select ID, Name, phone,  AccountNumber from account ORDER BY CreatedDate DESC ];
//         system.debug('listAcc is ' + listAcc);

//         for (Account eachAccount : listAcc){
//             string accountName = eachAccount.Name;
//             string accountPhone = eachAccount.Phone;
//             system.debug('acc name is' + accountName);
//             system.debug('acco phone is' + accountPhone);
//             system.debug('acc account number  is' + eachAccount.AccountNumber);
//             system.debug('account number is');
//         }


//     }
//     public static  void accountSOQL_Filter(){
//         String accName = 'Salesforce Inc.';
//         List<Account> listAcc = [Select ID, Name  from account where name = 'Salesforce Inc.' ];
//         system.debug(listAcc);
//     }
    
//     public static  void accountSOQL_Filter(String accName){
//         List<Account> listAcc = [Select ID, Name  from account where name = :accName ];
//         system.debug(listAcc);
    
    


//     }

    
// }
public class SoqlDemo {
    public static void accountSOQL_1() {
        //SOQL query returns List<sObject>
        List<Account> listAcc = [select id, name, phone, active__c from account where name like '%A%'];
        system.debug('account list ===> ' + listAcc);
        system.debug('# of records ==> ' + listAcc.size());

        Account acc = [select id, name, phone from account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug('acc is ' + acc);
    }

    public static void accountSOQL_2() {
        Account acc = [select id, name,phone, AccountNumber from account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug('acc is ' + acc);

        string accName = acc.Name;
        string accPhone = acc.Phone;
        system.debug('acc name is ' + accName);
        system.debug('acc phone is ' + accPhone);
        system.debug('acc account number is ' + acc.AccountNumber);
        system.debug('------');
    }

    public static void accountSOQL_3() {
        List<Account> listAcc = [select id, name,phone, AccountNumber from account ORDER BY CreatedDate DESC];
        system.debug('listAcc is ' + listAcc);

        // Isim alanini idexe gorede cekebiliriz
        // String isimAlani = listAcc[0].Name;
        // system.debug('Isim alanini index e gore cekme' + isimAlani);

        for (Account eachAccount : listAcc) {
            //to fetch field values we use .
            string accountName = eachAccount.Name;
            string accountPhone = eachAccount.Phone;
            system.debug('acc name is ' + accountName);
            system.debug('acc phone is ' + accountPhone);
            system.debug('acc account number is ' + eachAccount.AccountNumber);
            system.debug('------');
        }
    }

    public static void accountSOQL_filter() {
        string accName = 'Salesforce Inc.';
        list<account> listAcc = [select id, name from account where name = :accName];
        system.debug(listAcc);
    }
    public static void accountSOQL_filter(string accName) {
        list<account> listAcc = [select id, name from account where name = :accName];
        system.debug(listAcc);
    }
}