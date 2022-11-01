trigger AssetTrigger on Asset (before insert, before update, after insert, after update) {
    if(Trigger.isBefore && Trigger.isInsert){
        AssetTriggerHandler.AssetTriggerHandlerUpdate(trigger.new, trigger.old,trigger.newMap, trigger.oldMap);  
    }

    if(Trigger.isBefore && Trigger.isUpdate){
        AssetTriggerHandler.AssetTriggerHandlerUpdate(trigger.new, trigger.old,trigger.newMap, trigger.oldMap);  
    }

}