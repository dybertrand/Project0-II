// public with sharing class CustomerTriggerHandler {
    
//     /*
//     * Checks for duplicate customers upon insertion and merges them. Check is first name, last name,
//     * email, and phone to determine a match
//     */
//     public static void CheckForDuplicates(List<Customer__c> newCustomers, List<Customer__c> existingCustomer) {
//         List<Customer__c> matchingCustomers = new List<Customer__c>();

//         for (Customer__c nCustomer : newCustomers) {
//             for(Customer__c eCustomer : existingCustomer) {
//                 if (CompareCustomers(newCustomer, existingCustomer)) {
//                     matchingCustomers.add(newCustomer);
//                     matchingCustomers.add(existingCustomer);
//                 }
//             }
//         }

//         // Merge the matching customers
//         if (!matchingCustomers.isEmpty()) {
            
//         }
//     }

//     /*
//     * Compare the name, email, and phone of 2 customers to determine if it is a match
//     */
//     private Boolean CompareCustomers(Customer__c newCustomer, Customer__c existingCustomer) {
       
//         Boolean match = true;
       
//         if (existingCustomer.First_Name__c.toLowerCase() != newCustomer.First_Name__c.toLowerCase()) {
//             match = false;
//         }
//         if (existingCustomer.Last_Name__c.toLowerCase() != newCustomer.Last_Name__c.toLowerCase()) {
//             match = false;
//         }
//         if (existingCustomer.Customer_Email__c.toLowerCase() != newCustomer.Customer_Email__c.toLowerCase()){
//             match = false;
//         }
//         if (existingCustomer.Customer_Phone_Number__c != newCustomer.Customer_Phone_Number__c) {
//             match = false;
//         }    
//     }
// }
