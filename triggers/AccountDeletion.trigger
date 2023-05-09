trigger AccountDeletion on Account (before delete) {
    
    //Prevent the deletion of accounts if they have related oppurtunities
   
    for (Account a : [SELECT Id from Account WHERE Id IN (SELECT AccountId from opportunity) AND Id IN : trigger.old])
    {
        
        trigger.oldMap.get(a.Id).addError('cannot delete account with related oppurtunities');
    }

}