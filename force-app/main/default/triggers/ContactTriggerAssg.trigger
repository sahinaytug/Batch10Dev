trigger ContactTriggerAssg on Account (after insert) {
    if(trigger.isAfter && trigger.isInsert){
        contactHandlerAssg.creatContacts(Trigger.New);
    }
    

}