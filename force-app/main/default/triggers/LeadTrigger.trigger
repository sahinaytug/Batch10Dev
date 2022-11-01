trigger LeadTrigger on Lead(before insert, before update,after insert, 
after update) {
        if(trigger.isAfter && trigger.isInsert){
            for (lead eachLead : trigger.new) {
                if (eachLead.LeadSource == 'Web') {
                    System.debug('Rating should be Cold');
                    
                }else{
                    System.debug('Rating should be hot');
                }   
            }
        }
    }


