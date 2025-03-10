public with sharing class ContactSearch {

    public static list<Contact> searchForContacts(String var1, String var2)    {
        List<contact> Rtlist = [Select id, name, lastname,MailingPostalCode from Contact where
                                lastname= :var1 and MailingPostalCode= : var2 ];
        return RtList;


    }
    
}