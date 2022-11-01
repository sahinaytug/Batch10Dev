public  class dml4Practice {
    public static void  dmlPractice(){
    // Account Ac = [select id, Name from account order by CreatedDate desc limit 1 ];

    // Contact Cn = new Contact();
    // Cn.LastName = 'Teacher';
    // //establesh relationship with account
    // Cn.AccountId = Ac.id;

    // INSERT Cn;       

    //    Salesforce_Project__c sp = [ select id, name from Salesforce_Project__c ORDER BY CreatedDate DESC LIMIT 1];
       
    //    Salesforce_Ticket__c st = new Salesforce_Ticket__c();
    //    st.Subject__c = 'Ticket';
    //    st.Status__c = 'New';
    //    st.Priority__c = 'Low';
    //    st.Requested_by_date__c = Date.newInstance(2021, 12, 06);
    //    //IMPORTANT: Set relationship
    //    st.Salesforce_Project__c = sp.id;
    //    //DML
    //    insert st;

    // List<Account> ListAcc = new List<Account>();
    // for(Integer i = 0; i < 152; i++){
    //     Account Acc = new Account();
    //     Acc.Name = 'Bright Electric';
    //     Acc.Phone = '3333333333';
    //     Acc.Active__c = 'Yes';
    //     ListAcc.add(Acc);
    // }
    // delete ListAcc;

    // Account [] doomedAcctc = [select id, Name FROM Account
    //  WHERE Name = 'Softinnovas'];
    // try {
    //     undelete doomedAcctc ;        
    // } catch (DmlException e) {
        
    // }


}
}