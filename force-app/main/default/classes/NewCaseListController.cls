public class NewCaseListController {
    
    public List<Case> getNewCases(){
        List<Case> filterlist = [Select Id, CaseNumber From Case Where Status ='New'];
        return filterlist;
    }

}