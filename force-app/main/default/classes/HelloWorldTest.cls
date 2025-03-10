@isTest
public class HelloWorldTest {

    @isTest static void updateLead() {
        Lead myLead = new Lead();
        myLead.FirstName = 'David';
        myLead.LastName = 'Louis';
        myLead.Company = 'toto';
        insert myLead;
        myLead.Company = 'Dell';
        update myLead;
    }
}