public with sharing class SupplyOrderTriggerHandler {
    
    /*
    * Verify that a shipping order's status cannot be changed from completed
    */
    public static void ValidateShippingStatusChange(List<Supply_Order__c> originalOrders, List<Supply_Order__c> newOrders) {
        for (Supply_Order__c order : newOrders) {
            if (order.Order_Status__c.toLowerCase() != 'complete') {
                for (Supply_Order__c original : originalOrders) {
                    if (order.Id == original.Id && original.Order_Status__c.toLowerCase() == 'complete') {
                        order.addError('Cannot change a completed order\'s status.');
                    }
                }
            }
        }
    }
    
}
