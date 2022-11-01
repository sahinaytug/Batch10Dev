SoqlDemo2.childToParent_soqlDemo1();
SoqlDemo2.parentToChild_soql1();
SoqlDemo2.parentToChild_soql2();

List<List<SObject>> searchList = [FIND 'SOSL*' IN ALL FIELDS RETURNING Account (Id, Name), Contact(Name), Opportunity, Lead];
System.debug(searchList);
Account [] accounts = ((List<Account>)searchList[0]);
System.debug(accounts);
Contact [] contacts = ((List<Contact>)searchList[1]);
System.debug(contacts);
Opportunity [] opportunities = ((List<Opportunity>)searchList[2]);
System.debug(opportunities);
Lead [] leads = ((List<Lead>)searchList[3]);
System.debug(leads);

 List<Salesforce_Project__c> projects = new List<Salesforce_Project__c>();        
        
        for (Integer i = 1; i <= 30; i++) {
            Salesforce_Project__c sp = new Salesforce_Project__c();
            sp.Project_Name__c = 'Project ' + i;
            if (i <= 10) {
                sp.Status__c = 'New';
            } else if (i <= 20) {
                sp.Status__c = 'In - progress';
            } else {
                sp.Status__c = 'Completed';
            }
            projects.add(sp);
        }
        insert projects;

        List<Salesforce_Ticket__c> tickets = new List<Salesforce_Ticket__c>();
        
        integer T = 1;
        for (Salesforce_Project__c sp : projects) {
            Salesforce_Ticket__c st1 = new Salesforce_Ticket__c();
            st1.Subject__c = 'Ticket ' + T;
            st1.Priority__c = 'High';
            st1.Salesforce_Project__c = sp.Id;
            Salesforce_Ticket__c st2 = new Salesforce_Ticket__c();
            T++;
            st2.Subject__c = 'Ticket ' + (T);
            st2.Priority__c = 'Medium';
            st2.Salesforce_Project__c = sp.Id;
            Salesforce_Ticket__c st3 = new Salesforce_Ticket__c();
            T++;
            st3.Subject__c = 'Ticket ' + (T);
            st3.Priority__c = 'Low';
            st3.Salesforce_Project__c = sp.Id;
            T++;
         

            tickets.add(st1);
            tickets.add(st2);
            tickets.add(st3);
        }
        insert tickets;
