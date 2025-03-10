trigger AccountAddressTrigger on Account (before insert, before update) {

for(account acc: trigger.new){
if(acc.Match_Billing_Address__c == true){

acc.shippingPostalCode = acc.BillingPostalCode;

}


}

}