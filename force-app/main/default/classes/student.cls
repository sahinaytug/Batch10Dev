public class student {
    public string firstName ;
    public string lastName ;
    public integer classYear ;
    public string major;
    
    public string generateReport(){
        system.debug('report generated for ' + firstName + lastName 
        + 'for' + classYear + '' + major);
        return major;
    }


 
}
