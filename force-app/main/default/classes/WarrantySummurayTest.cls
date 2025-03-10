@isTest
public class WarrantySummurayTest {

    @isTest static void insertCase() {
        Case myCa = new Case();
        myCa.Product_Purchase_Date__c = date.today();
        myCa.product_Total_Warranty_Days__c = 13;
        myCa.Has_Extended_Warranty__c = false;
        insert myCa;
        
    }
}