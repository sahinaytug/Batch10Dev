public class daysCollection {
    public static string daysAssignment(integer i){
        List<String> lstDays = new List<String>();
        lstDays.add('Sunday');
        lstDays.add('Monday');
        lstDays.add('Tuisday');
        lstDays.add('Wednesday');
        lstDays.add('Thursday');
        lstDays.add('Friday');
        lstDays.add('Saturday');
        
        String output_day = '';

        if (i >  lstDays.size()) {
            output_day = 'No value found';
        }else {
            output_day = lstDays.get(i);
        }
        return output_day;
        }

        // if (i > 0 && i <  lstDays.size()+1) {
        //     output_day = lstDays[i-1];
        // }else {
        //     output_day = 'No value found';
        // return output_day;
        // }
        // return 'Day ' + i + ': '+ output_day;
        // }
    }   
   

// Create a class name daysCollection class
// creative static method daysAssignment which returns string and 
// accepts input as integer
// create a variable lstDays which is list<string>
// create a variable output_day
// add all days into the LstDays.
// get the day based on the input integer given from the lstDay and
// assign it to a output _day
// Return the output _day
// If the input integer is greater than the size throw an error 
// message as No Values FOUND
// Create an anonymous apex
// Call daysAssignment with passing value as 1 display the output 
// as Monday
// Call daysAssignment with passing value as 13 display the output 
// as No Values FOUND
// Call daysAssignment with passing value as 3 display the output 
// as Wednesday