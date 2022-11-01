trigger AccountTrigger2 on Account (before insert) {
    System.debug('account before insert trigger called');

}