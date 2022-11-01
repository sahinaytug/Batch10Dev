trigger OpportunityNameAmount on Opportunity (before insert, before update,after insert, 
after update) {
    // Map<id, Opportunity > oldOppMap =  trigger.oldMap;


    // if(trigger.isAfter && trigger.isUpdate){
    // for(Opportunity eachOpp : trigger.new){
    //     system.debug('New Opportunuty Name => ' + eachOpp.name);
    //     system.debug('New Opportunuty Amount => ' + eachOpp.amount);
    //     system.debug('Old Opportunuty Name => ' + oldOppMap.get(eachOpp.Id).Name);
    //     system.debug('Old Opportunuty Amount => ' + oldOppMap.get(eachOpp.Id).Amount);

    // }
    //     system.debug(' ------------------------------------------------------------------');

    // Map<id, Opportunity > newOppMap =  trigger.newMap;
    // for(Opportunity eachOpp : trigger.old){
    //     system.debug('New Opportunuty Name => ' + newOppMap.get(eachOpp.Id).Name);
    //     system.debug('New Opportunuty Amount => ' + newOppMap.get(eachOpp.Id).Amount);
    //     system.debug('Old Opportunuty Name => ' + eachOpp.name);
    //     system.debug('Old Opportunuty Amount => ' + eachOpp.amount);
    // }
    // }

           //4. When the StageName of an opportunity is updated, then print the value of description field and opportunity name. [OPTIONAL]

    if(trigger.isAfter){
        if(trigger.isUpdate){
            for (opportunity eachOpp : trigger.new) {
                if (eachOpp.StageName != trigger.oldMap.get(eachOpp.Id).StageName) {
                    System.debug('Opportunity is updated '+ eachOpp.Name);
                    system.debug('Description is = ' +eachOpp.Description );
                    
                }
                
            }
        }
    }



}