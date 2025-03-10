public with sharing class AccountHandler {

    public static Account insertNewAccount(String name){
        Account acc = new account();
        acc.Name= name;

        try {
            insert acc;
            return acc;
        } catch (Exception e) {
            system.debug('Erreur'+e);
            return null;
            
        }


    }

   

    }