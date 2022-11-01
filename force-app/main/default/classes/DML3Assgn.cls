public class DML3Assgn {
    public static void dmlAssgnInsert(){
        List<Account> ListAssgn = new List<Account>();

        Account Ac = new Account();
        Ac.Name = 'Sahin Assignment';
        ListAssgn.add(Ac);

        Account Ac1 = new Account();
        Ac1.Name = 'Aytug Assignment';
        ListAssgn.add(Ac1);

        Account Ac2 = new Account();
        Ac2.Name = 'Assignment';
        ListAssgn.add(Ac2);

        insert ListAssgn;
    }
    
}
