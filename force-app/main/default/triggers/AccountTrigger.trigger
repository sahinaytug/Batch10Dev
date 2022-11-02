trigger AccountTrigger on Account (before insert, before update,after insert, 
                                 after update ){                              
   System.debug('=====START======');
   if (Trigger.isBefore) {
    AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    
   }
   if (Trigger.isAfter && Trigger.isUpdate) {
    //update VIP field for all its contacts
    AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    
   } 
   System.debug('======END======')  ; 


//updatre rtrg



  }

//       //   System.debug('====START====');  

      //  List<Account> newAccounts = Trigger.new;
      //  System.debug('number of acoounts' + newAccounts.size());

      //  if(Trigger.isBefore && Trigger.isInsert){
      //   System.debug('Before trigger new ' + newAccounts);
        
      //   for (Account eachAcc : newAccounts){
      //     System.debug('acc id ==>' + eachAcc.id + ', acc name ==>' + eachAcc.Name);
      //   }
      //  }
      //  if(Trigger.isAfter && Trigger.isInsert){
      //   System.debug('after trigger new ' + newAccounts);
        
      //   for (Account eachAcc : newAccounts){
      //     System.debug('Aftrer acc id ==>' + eachAcc.id + ', acc name ==>' + eachAcc.Name);
      //   }
      //  }
      //  System.debug('=====END====');  
      
      
   
      //True when code is running in INSERT Context
    //or while inserting record .isInsert will be true
    // system.debug('====START====');
    // if (trigger.isBefore && trigger.isInsert){
    //     System.debug('account before insert trigger called yeahhh');
    // //True when code is running is Update Context
    // }
    // if(trigger.isAfter && trigger.isInsert){
    // System.debug('account  after insert trigger called ooh yeahh');

    // }
    // if(trigger.isBefore && trigger.isUpdate){
    // System.debug('account before update trigger called ooh yeahh');

    // }
    // if(trigger.isAfter && trigger.isUpdate){
    // System.debug('account after update trigger called ooh yeahh');

    // }
    // system.debug('====END====');

    // if(trigger.isBefore){
    //     System.debug('account before insert trigger called');
    // }
    // if(trigger.isAfter){
    //     System.debug('account after insert trigger called');
    // }

   
      //   system.debug('---start---');
      //   //trigger.new ALWAYS gives List<sObject>
      //   List<account> newAccounts = trigger.new;
      //   system.debug('number of accounts ==> ' + newAccounts.size());
    
        // if (Trigger.isBefore && Trigger.isInsert) {
        //     system.debug('before trigger.new ==> ' + newAccounts);
        //     for (Account eachAcc : newAccounts) {
        //         system.debug('BEFORE acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        //     }
      //   }
      //   if (Trigger.isAfter && Trigger.isInsert) {
      //       system.debug('after trigger.new ==> ' + newAccounts);
      //       for (Account eachAcc : newAccounts) {
      //           system.debug('AFTER acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
      //       }
      //   }
      //   if (Trigger.isBefore && Trigger.isUpdate) {
      //     system.debug('before trigger.new ==> ' + newAccounts);
      //     for (Account eachAcc : newAccounts) {
      //         system.debug('BEFORE acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
      //     }
      // }
      // if (Trigger.isAfter && Trigger.isUpdate) {
      //     system.debug('after trigger.new ==> ' + newAccounts);
      //     for (Account eachAcc : newAccounts) {
      //         system.debug('AFTER acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
      //     }
      // }
  //   system.debug('---end---');

  //     if (Trigger.isBefore && Trigger.isInsert) {
  //       system.debug('before insert trigger.old ==> ' + trigger.old);
 
  //    }
  //    if (Trigger.isAfter && Trigger.isInsert) {
  //        system.debug('after insert trigger.old ==> ' + trigger.old);
  //    }

  //    if (Trigger.isBefore && Trigger.isUpdate) {
  //     system.debug('before insert trigger.old ==> ' + trigger.old);

  //  }
  //  if (Trigger.isAfter && Trigger.isUpdate) {
  //      system.debug('after insert trigger.old ==> ' + trigger.old);
  //  }

//    if (trigger.isAfter && trigger.isUpdate) {
//     list<account> newAccounts = trigger.new;
//     for (account newAcc : newAccounts) {
//         system.debug('NEW acc id ==> ' + newAcc.id + ', NEW acc name ==> ' + newAcc.Name + newAcc.Phone);
//     }
//     list<account> oldAccounts = trigger.old;
//     for (account oldAcc : oldAccounts) {
//         system.debug('OLD acc id ==> ' + oldAcc.id + ', OLD acc name ==> ' + oldAcc.Name + oldAcc.Phone);
//     }
// }

// if (trigger.isAfter) {
//   list<account> newAccounts = trigger.new;

//   set<id> setAccIds = new set<id>();
//   for (account eachAcc : newAccounts) {
//       setAccIds.add(eachAcc.Id);
//   }
//   system.debug('set of ids ==> ' + setAccIds);
// }
//     Map<Id,Account> newAccMap = trigger.newMap;
//     Map<Id,Account> oldAccMap = trigger.newMap;


//     if (Trigger.isBefore && Trigger.isInsert) {
//         system.debug('====BEFORE INSERT=====');
//         system.debug('Before insert OLD MAP' + oldAccMap);
//         system.debug('Before insert NEW MAP' + newAccMap);
//      }

//      if (Trigger.isAfter && Trigger.isInsert) {
//         system.debug('====AFTER INSERT=====');
//         system.debug('After insert OLD MAP' + oldAccMap);
//         system.debug('After insert NEW MAP' + newAccMap);
//      }

//      if (Trigger.isBefore && Trigger.isUpdate) {
//       system.debug('====BEFORE INSERT=====');
//       system.debug('Before iUPDATE OLD MAP' + oldAccMap);
//       system.debug('Before UPDATE NEW MAP' + newAccMap);
//    }

//     if (Trigger.isAfter && Trigger.isUpdate) {
//       system.debug('====AFTER INSERT=====');
//       system.debug('After iUPDATE OLD MAP' + oldAccMap);
//       system.debug('After UPDATE NEW MAP' + newAccMap);
//    }

   
    // Map<id, account> newAccMap = trigger.newMap;
    // map<id, account> oldAccMap = trigger.oldMap;

    // system.debug('---start---');
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //    set<id> setAccIds = newAccMap.keySet();
       
    //    for (id eachId : setAccIds) {
    //        system.debug('each id which is also key of maps ==> ' + eachId);
    //        Account newAccount = newAccMap.get(eachId);
    //        system.debug('new Account name ==> ' + newAccount.Name);

    //        Account oldAccount = oldAccMap.get(eachId);
    //        system.debug('old Account name ==> ' + oldAccount.Name);
    //    }

    // }
    // system.debug('---end---');

   
      // Map<id, account> newAccMap = trigger.newMap;
      // map<id, account> oldAccMap = trigger.oldMap;
  
      // system.debug('---start---');
      // if (trigger.isBefore && trigger.isUpdate) {
      //     set<id> setAccIds = newAccMap.keySet();
      //     integer countWSupdated = 0;
  
      //     for (ID eachId : setAccIds) {
      //         Account oldAccount = oldAccMap.get(eachId);
      //         //system.debug('old account ==> ' + oldAccount);
      //         string oldWebSite = oldAccount.Website;
      //         //system.debug('old account website ==> ' + oldWebSite);
  
      //         Account newAccount = newAccMap.get(eachId);
      //         //system.debug('new account ==> ' + newAccount);
      //         string newWebsite = newAccount.Website;
      //         //system.debug('new account website==> ' + newWebsite);
  
      //         if (oldWebsite != newWebsite) {
      //             countWSupdated++;
      //             system.debug('For account ' + newAccount.Name + ', website is changed to ' + newwebsite);
      //         }
      //     }
      //     system.debug('# of account website updated ==> ' + countWSUpdated);
      // }
      
      // system.debug('---START---');

      // if(trigger.isBefore){
      //   System.debug('Before insert/update trigger on account object');
      //   for(Account eachAcc: Trigger.new){
      //     if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
      //       eachAcc.Description = 'Account is active. ENJOY!!!';
      //     }
      //     if (trigger.isUpdate) {
      //       id accId = eachacc.Id;
      //       Account oldAccount = trigger.oldMap.get(accId);
      //       Account newAccount = trigger.newMap.get(eachacc.id);

      //     if (eachAcc.Active__c == 'Yes' && oldAccount.Active__c != newAccount.Active__c){
      //       eachAcc.Description = 'Account is active. ENJOY!!!';
      //       }
      //     }
      //   }
      // }
      // system.debug('---END---');


        //Same Code Second Option
      // if(trigger.isBefore){
      //   System.debug('Before insert/update trigger on account object');
      //   for(Account eachAcc: Trigger.new){
      //     Boolean updateDesc = false;
      //     if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
      //       updateDesc = true;
            
      //     }
      //     if (trigger.isUpdate) {
      //       // id accId = eachacc.Id;
      //       Account oldAccount = trigger.oldMap.get(eachacc.Id);
      //       Account newAccount = trigger.newMap.get(eachacc.id);

      //     if (eachAcc.Active__c == 'Yes' && oldAccount.Active__c != newAccount.Active__c){
            
      //       }
      //     }
      //     if(updateDesc == true){
      //     eachAcc.Description = 'Account is active. ENJOY!!!';
      //     }
      //   }
      // }
      // system.debug('---END---');

      // system.debug('---START---');
      // if(trigger.isBefore){
      //   AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
      // }
      // system.debug('---END---');
      
    //   if(trigger.isAfter){
    //     if(trigger.isUpdate){
    //     AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, 
    //     Trigger.NewMap, Trigger.OldMap);
    //   }

    // }

   

      
    
    



