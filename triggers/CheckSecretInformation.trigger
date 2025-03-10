trigger CheckSecretInformation on Case (after insert, before update) {
    //création d'une variable
    String ChildSubject='Warning Parent case may contain secret info';
    //Step 1: Create a collection contenant chacun des mots clés
    Set<String> SecretKeyWords = new Set<String>();
    SecretKeyWords.add('Credit Card');
    SecretKeyWords.add('Social Security'); 
    SecretKeyWords.add('SSN'); 
    SecretKeyWords.add('Passport'); 
    SecretKeyWords.add('Bodyweight'); 
    
    //Step 2: Vérifier si le case créé conteient  l'un des mots clés
    List<Case> casesWithSecretInfo = new list<Case>();
    for (Case myCase : Trigger.new) {
        //on vérifie que le sujet ne soit pas le même que le case enfant afin de ne pas boucler indéfiniment
        if (myCase.Subject !=ChildSubject){
        //boucle pour vérifier si 1 ou plusieurs keyword sont présents dans le champ description
        for (String keyword : SecretKeyWords) {
            //on vérifie que le champs description est différent de null et qu'il contient un keyword (en ignorant la case)
            if (myCase.Description !=null && myCase.Description.containsIgnoreCase(keyword)) {
                //ajout du case contenant un keyword dans la liste et ensuite on sort de la boucle
                casesWithSecretInfo.add(myCase);
                System.debug('Case '+ myCase.id + ' include secret keyword ' + keyword);
                break;
                
            }
        }
    }
    }
    //Step 3: si le case contient un des mot clés, créer un objet case enfant
   for (case caseWithSecretInfo : casesWithSecretInfo) {
    Case childCase        = new Case();
    childCase.Subject     = ChildSubject;
    childCase.ParentId    = caseWithSecretInfo.id;
    childCase.IsEscalated = true;
    childCase.Priority    ='high';
    childCase.Description ='At least one of the following keywords were found ' + secretKeyWords;
    insert childCase;
    
   }

}