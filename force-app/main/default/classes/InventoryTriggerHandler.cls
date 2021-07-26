public with sharing class InventoryTriggerHandler {

    /*
    * Upon insertion of a new inventory item, if the description is left blank
    * copy the name into the description.
    */
    public static void UpdateDescription(List<Inventory__c> inventory) {
        for(Inventory__c item : inventory) {
            if (String.isEmpty(item.Item_Notes__c)) {
                item.Item_Notes__c = item.Name;
            }
        }
    }

    /*
    * Verify the date acquired isn't before today's date
    */
    public static void ValidateDate(List<Inventory__c> inventory) {
        for (Inventory__c item : inventory) {
            if (item.Date_Acquired__c < Date.today()) {
                item.addError('It is not possible to set the date acquired in the past.');
            }
        }
    }
}
