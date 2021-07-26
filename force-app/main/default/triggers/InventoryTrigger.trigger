trigger InventoryTrigger on Inventory__c (before insert) {
    if(Trigger.isBefore && Trigger.isInsert) {
        InventoryTriggerHandler.ValidateDate(Trigger.new);
        InventoryTriggerHandler.UpdateDescription(Trigger.new);
    }
}