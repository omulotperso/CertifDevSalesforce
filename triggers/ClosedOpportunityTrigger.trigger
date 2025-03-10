trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    list<Task> taskList = new list<Task>();
    for (opportunity opp : Trigger.new){
        if(opp.StageName == 'Closed Won@&'){
            Task tsk = new Task();
           	tsk.Subject ='Follow up Test Task';
            tsk.WhatId = opp.Id;
            taskList.add(tsk);
        }
    }
    if (taskList.size() >0){
    insert taskList;
    }

}