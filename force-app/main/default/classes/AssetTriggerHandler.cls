public with sharing class AssetTriggerHandler {
    public static void AssetTriggerHandlerUpdate(List<Asset> AssTriggerNew,
                             List<Asset> AssTriggerOld, 
                             Map<id, asset> AssTriggerNewMap,
                             Map<Id,Asset> AssTriggerOldMap ) {
    Map<Id,Asset> newAssMap = AssTriggerNewMap;
    Map<Id,Asset> oldAssMap = AssTriggerOldMap;
    for(Asset eachAcc : AssTriggerNew){
        if(Trigger.isInsert || Trigger.isUpdate && eachAcc.Status == 'Shipped'){
            eachAcc.Description = 'Asset is shipped';
        }
        if(Trigger.isUpdate){
            Asset oldAsset = oldAssMap.get(eachAcc.Id);
            Asset newAsset = newAssMap.get(eachAcc.Id);
            if(eachAcc.Status == 'Installed ' && oldAsset.Status != newAsset.Status){
                eachAcc.Description = 'Asset is installed';
            }
        }
    }

}
}


