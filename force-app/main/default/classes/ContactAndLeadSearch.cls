public class ContactAndLeadSearch {
    public static list<list< Sobject>> searchContactsAndLeads (String lastname){
        
        list<list< Sobject>> contactLeadList = [FIND :lastname IN ALL FIELDS returning contact(Name), lead(Name)];
        return contactLeadList;	
    }

}