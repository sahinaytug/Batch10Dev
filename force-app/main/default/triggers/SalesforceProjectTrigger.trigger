trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if (Trigger.isAfter && trigger.isInsert) {
        //call method to create default ticket.
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);
        System.debug('Caling future method');
        SalesforceProjectTriggerHandler.updateDescription(Trigger.newMap.keySet());
        System.debug('Done colling future method');
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        //Validation method
        //SalesforceProjectTriggerHandler.validateProjectCompletion(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.spComletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
        
    }

}