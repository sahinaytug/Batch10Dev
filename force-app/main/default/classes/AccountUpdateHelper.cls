public class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountWebsiter(List<Id> accIds) {
        List<Account> updateAccounts = new List<Account>();
        for (account acc:[select id, website from account where id in:accIds] ) {
            acc.Website = 'www.softinnovas';
            updateAccounts.add(acc);
            
        }
        update updateAccounts;

    }
}
