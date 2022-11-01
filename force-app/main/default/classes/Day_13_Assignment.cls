public class Day_13_Assignment {
    // Write an SOQL query for Account Object querying contact object fields in the 
    // same query referring ID and Name and pass them to a list<Account> 
    // lstaccount records.
    public static void cntAndAcc(){
        List<Contact> AccList = [select Account.id, Account.Name from Contact];
        for(Contact eachAccList : AccList){
            System.debug('Account id is ' + eachAccList.Account.id);
            System.debug('Account name is ' + eachAccList.Account.name);

        }
    }

    public static void conToAcc(){
        List<Account> AccList = [Select id, name, (Select id, name from Contacts) from Account];
        for(Account eachAcc : AccList){
        System.debug('Account id is ' + eachAcc.id);
        System.debug('Account name is ' + eachAcc.Name);

        List<Contact> ContactList = eachAcc.Contacts;
        for(Contact eachContact : ContactList){
            System.debug('Contact id is ' + eachContact);
            System.debug('contact name is ' + eachContact);
            System.debug('_____END______' );



        }
    }
   
}
}