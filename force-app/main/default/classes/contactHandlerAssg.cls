public class contactHandlerAssg {
    public static void creatContacts(List<account> accTriggerNew,
                                    List<account> accTriggerOld, 
                                    Map<id, account> accTriggerNewMap,
                                    Map<id, account> accTriggerOldMap) {
    List<Contact> ConList = new list<Contact>();
    
    if(Trigger.isInsert){
        for(Account eachAcc : accTriggerNew){
            Contact Cont = new Contact();
            Cont.AccountId = eachAcc.Id;
            Cont.LastName = 'Aytug';
            ConList.add(Cont);
        }
        insert ConList;
        }

    }
}

