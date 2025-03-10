@isTest
public class AppleWatchTest {

    @isTest static void insertOpportunity() {
        Opportunity myOpp = new Opportunity();
        myOpp.Name = 'Taylor Swift';
        myOpp.StageName = 'Prospecting';
        myOpp.CloseDate = Date.today();
        insert myopp;
        
    }
}