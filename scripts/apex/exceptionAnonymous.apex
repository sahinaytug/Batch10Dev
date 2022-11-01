try {
    List<Account> la;
    Account ac = new Account();
    la.add(ac);
insert ac;

} catch (DmlException de) {
   System.debug('Dml went wrong buddy');     
} catch (Exception e) {
   System.debug('something went wrong buddy'); 
}

//WILL BELOV LINE EXECUTE?
system.debug('Apex is SIMPLE');