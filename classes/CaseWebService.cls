@RestResource(urlMapping='/cases/*')

global class CaseWebService {
    @HttpGet
    global static List <case> getCases() {
        
        List<Case> Result = [SELECT CaseNumber,Subject,Status,Origin,Priority FROM Case LIMIT 10 ];
        return result;
    }

}