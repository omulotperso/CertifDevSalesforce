trigger deduplicateLead on Lead (before insert) {
    //recherche de l'id de la queue Data Quality cette variabl est fixe donc pas la peine de la mettre dans la boucle
    List<Group> dataQualityGroups = [Select Id
                                from Group 
                                where DeveloperName ='Data_Quality'
                                limit 1];


    for (Lead myLead : Trigger.new) {
        if (myLead.Email != null) {
            
        
        //recherche des contact ayant la meme adresse mail que la lead en création
        list<Contact> ListCont = [Select Id,firstname,lastname,account.Name from Contact where email= :mylead.email];
        //debug
        System.debug(listCont.size() + 'contact trouvé(s).');
        if (!listCont.isempty()) {
            if (!dataQualityGroups.isempty()) {
                myLead.id = dataQualityGroups.get(0).id;  
            }
            
            String messageDescription = 'Duplicate contact founf : \n';
            //ajouter l'id des contacts en doublons dans le champs commentaire de la lead
            for (Contact matchingContact : ListCont) {
                messageDescription += matchingContact.FirstName + ' '
                                    + matchingContact.LastName + ', '
                                    + matchingContact.Account.Name
                                    + '\n';
                
            }
            if (myLead.Description != null) {
                messageDescription += '\n' + myLead.Description;
            }
                myLead.Description = messageDescription; 
        }
    }

    }
    
}