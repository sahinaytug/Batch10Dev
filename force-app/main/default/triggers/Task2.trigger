trigger Task2 on Contact (before update, after update) {
     if(trigger.isBefore){
        System.debug('account before insert trigger called');
    }
    if(trigger.isAfter){
        System.debug('account after insert trigger called');
    }

}