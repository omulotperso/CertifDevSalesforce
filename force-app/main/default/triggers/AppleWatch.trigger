trigger AppleWatch on Opportunity (after insert) {
    for(Opportunity opp : Trigger.new){
        Task t = new Task();
        t.Subject = 'Apple Watch Promo';
        t.Description = 'Send them one ASAP';
        t.Priority = 'High';
        t.WhatId = Opp.id;
        insert t;
    
}
}