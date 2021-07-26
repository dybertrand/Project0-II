trigger InventoryTrigger on Inventory__c (before insert) {
    if(Trigger.isBefore && Trigger.isInsert) {
        InventoryTriggerHandler.UpdateDescription(Trigger.new);
    }
}