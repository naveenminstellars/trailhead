trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Opportunity> oppList = new List<Opportunity>();
    List<Task> t = new List<Task>();
   // Task[] tasks = [Select Id From Task Where WhatId IN :Trigger.new];
    
    oppList = [SELECT Id,StageName from Opportunity WHERE Id in : Trigger.new AND StageName = 'Closed Won' ];
    
   for (Opportunity a : oppList)
   {
      
     t.add(new Task(subject='Follow Up Test Task',WhatId=a.Id));
       System.debug(t);
       
   }
    
   insert t;
    

}