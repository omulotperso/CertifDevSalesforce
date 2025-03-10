trigger WarrantySummary on Case (before insert) {
    for(Case myCase : Trigger.new) {
        String purchaseDate         = myCase.Product_Purchase_Date__c.format();
        String createdDate          = Datetime.now().format();
        Integer warrantyDays        = myCase.product_Total_Warranty_Days__c.intValue();
        //la commannde setcale permet d'arrondi le resultat du pourcentage à 2 caractères d
        Decimal warrantyPercentage  = (100*(myCase.Product_Purchase_Date__c.daysBetween(Date.today())/ myCase.product_Total_Warranty_Days__c)).setScale(2); //(Date.today() - purchaseDate)/warrantyDays;
        Boolean hasExtendedWarranty = myCase.Has_Extended_Warranty__c;

        //populated summary field
        myCase.Warranty_Summary__c = 'Product purchased on ' + purchaseDate + ' '
                                    + 'and case created on ' + createdDate + '.\n'
                                    + 'warranty is for ' + warrantyDays +' '
                                    + 'days and is ' + warrantyPercentage + '% through its warranty period.\n'
                                    + 'Extended warranty: ' + hasExtendedWarranty + '\n'
                                    + 'Have a nice day !';
        
    }
}