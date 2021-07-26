// trigger CustomerTrigger on Customer__c (before insert) {
//     if(Trigger.isBefore && Trigger.isInsert) {
//         CustomerTriggerHandler.CheckForDuplicates(Trigger.new, Trigger.old);
//     }
// }