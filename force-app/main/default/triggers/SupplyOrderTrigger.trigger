trigger SupplyOrderTrigger on Supply_Order__c (before update) {
    if (Trigger.isUpdate && Trigger.isBefore) {
        SupplyOrderTriggerHandler.ValidateShippingStatusChange(Trigger.old, Trigger.new);
    }
}