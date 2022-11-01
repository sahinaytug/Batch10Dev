public  class SOQL_Assignment {
    public static void soql_WhereClause() {
        List<Contact> lstcontact = [select id, name, phone from Contact where name like '%A%'];
        system.debug('Contact list ===> ' + lstcontact);
        system.debug('# of records ==> ' + lstcontact.size());

       Contact acc = [select id, name, phone from contact ORDER BY CreatedDate DESC ];
        system.debug('acc is ' + acc);
   
}

public static void soql_formethod() {
    List<Contact> lstcontact = [select lastName, Phone FROM Contact ];
    system.debug('lstcontact is ' + lstcontact);


    for (Contact eachContact : lstcontact) {
        //to fetch field values we use .
        string contactLastName = eachContact.lastName;
        string contactPhone = eachContact.Phone;
        system.debug('Contact last name is ' + contactLastName);
        system.debug('Contact phone is ' + contactPhone);
        system.debug('------');
    }
}

// Create an Apex Class SOQL_Assignment
// Create a static method soql_WhereClause 
// Create a variable lstcontact which is list<Contact>.
// Write an SOQL statement which gets all contact records where 
// lastname contains string ‘A’.
// Display the size of the variable.
// Create a static method soql_formethod
// Create a variable lstcontact which is list<Contact>.
// Write an SOQL statement which gets all contact records with 
// fields Lastname,phone number.
// Display the data of each record Lastname and phone number in 
// for loop
// Create a soql.apex
// Call the soql_WhereClause
}