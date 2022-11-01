trigger CaseTrigger on Case (before insert, before update) {
    if (trigger.isInsert) {
        system.debug('before insert');    
    }
    if (trigger.isUpdate) {
        system.debug('before update');
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('count # of times trigger runs ==> ' + CaseTriggerHandler.countTriggerExecution);
        CaseTriggerHandler.countTriggerRecords += Trigger.size;
        system.debug('count # of records trigger ==> ' + CaseTriggerHandler.countTriggerRecords);
    }
    
}
//WEEK-5 Q-1
    //     Create a trigger on a Case object named “CaseTrigger”. Show the debug messages as follows:
// a. Triggers - "We are in the triggers"
// b. after triggers - "We are in the after triggers"
// c. before triggers - "We are in the before triggers"
// d. before Update - "We are in the before-Update triggers"
// e. before Insert - "We are in the before-Insert triggers"
// f. after update - "We are in the after-Update triggers"
// g. after Insert - "We are in the after-Insert triggers"
// System.debug('We are in the triggers'); 

// System.debug('====START===');

//     System.debug('We are in the triggers');

//     if(trigger.isBefore){
//         System.debug('We are in the before triggers');
        
    
//       if(trigger.isInsert){
//         System.debug('We are in the before-Insert triggers');
//         // for(Case eachCase : trigger.new){
//         //     system.debug('case number ' + eachCase.caseNumber + ' was created with id '+ eachCase.Id + ' on ' + eachCase.createdDate );
           
//         // }   
//        }
//        if(trigger.isUpdate){
//         System.debug('We are in the before-Update triggers');
//         for(Case eachCase : trigger.new){
//             system.debug('case number ' + eachCase.caseNumber + ' was created with id '+ eachCase.Id + ' on ' + eachCase.createdDate );
           
//         }

//         }
//     }
//     if(trigger.isAfter){
//         System.debug('We are in the after triggers');

//         if(trigger.isInsert){
//         System.debug('We are in the after-Insert triggers');
//         }
//          if(trigger.isUpdate){
//         System.debug('We are in the after-Update triggers');
//         }
//         for(Case eachCase : trigger.new){
//             system.debug('case number ' + eachCase.caseNumber + ' was created with id '+ eachCase.Id + ' on ' + eachCase.createdDate );
           
//         }   
//     }
    // System.debug('===END===');


// Whenever a case is created with origin as email then set status as new and Priority as Medium.

// if(Trigger.isBefore && trigger.isInsert){
//     for (case eachCase : trigger.new) {
//         if (eachCase.Origin == 'Email') {
//             eachCase.Status = 'Working';
//             eachCase.Priority = 'High';

            
//         }
        
//     }

// }

// System.debug('===BEFORE INSERT===');
// }
