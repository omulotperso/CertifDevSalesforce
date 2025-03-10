trigger CaseOnAccount on Account (after insert) {
    For (Account acc : Trigger.new){
        case ca = New case();
        ca.Subject = 'Dedupe this account';
        ca.OwnerID = '0057R00000DpRW7QAN';
        ca.Accountid = acc.id;
        insert ca;
        
        
    }
    
    

}