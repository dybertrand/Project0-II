public with sharing class InventoryTriggerHandler {

    /*
    * Upon insertion of a new inventory item, if the description is left blank
    * copy the name into the description.
    */
    public static void UpdateDescription(List<Inventory__c> triggerNew) {
        for(Inventory__c item : triggerNew) {
            if (String.isEmpty(item.Item_Notes__c)) {
                item.Item_Notes__c = item.Name;
            }
        }
    }
}
