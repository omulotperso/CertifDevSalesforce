trigger LeadCompetitor on Lead (before insert, before update) {   
    for (Lead myLead : trigger.new) {
        //Ajouter tous les prix dans une liste
        List<Decimal> CompetitorPrice = New List<Decimal>();
        CompetitorPrice.add(myLead.Competitor_1_Price__c);
        CompetitorPrice.add(myLead.Competitor_2_Price__c);
        CompetitorPrice.add(myLead.Competitor_3_Price__c); 

        //Ajouter tous les competitor dans une liste
        List<String> Competitor = New List<String>();
        Competitor.add(myLead.Competitor_1__c);
        Competitor.add(myLead.Competitor_2__c);
        Competitor.add(myLead.Competitor_3__c); 

        //variable pour le prix le plus base
        Decimal lowerPrice;
        Integer lowestPricePosition;
        //variable pour le prix le plus haut
        Decimal higherPrice;
        Integer higherPricePosition;
        //boucler sur les competitor pour trouver la position du moins cher
        for (integer i=0;i<CompetitorPrice.size();i++){
            //stockage de la valeur de CompetitorPrice dans une variable pour une meilleur lisibilité du code
            Decimal currentPrice = competitorPrice.get(i);
            if (higherPrice == null || currentPrice>higherPrice) {
                higherPrice = currentPrice;
                higherPricePosition = i;
            }
        }
        myLead.Lead_Competitor__c = Competitor.get(higherPricePosition);
        myLead.Lead_Name_Competitor__c = CompetitorPrice.get(higherPricePosition);
    }

}