@istest
public class InventoryTrigger_Test {
    
    static final string ITEM_NAME = '15 inch skilet circa 1820'; 
    static final string STORE_NAME = 'The Debug Store';

    Inventory__c newItem = new Inventory__c();

    @TestSetup
    static void setupData(){
        Inventory__c newItem = new Inventory__c();
        newItem.Name = ITEM_NAME;
        newItem.Date_Acquired__c = Date.today();
        // newItem.Store__c = new Store__c(Name='Generic Store');
        newItem.Price__c = 20.50;
    }

    @istest
    public TestInventoryDescriptionTrigger() {
        Database.SaveResult dbResult = Database.insert(newItem);
        if (!dbResult.isSuccess()) {
            System.debug('failed to insert inventory item');
        }
        else {
            System.assertEquals(ITEM_NAME, newItem.Notes);
        }
    }
}
