public  class getMonth {
    public String getMonthName(Integer month){
        String output_month =  ' ';
        if (month == 1) {
            output_month = 'January';
        } else if (month == 2){
            output_month = 'Fabruary';   
        } else if (month == 3){
            output_month = 'March';  
        } else if (month == 4){
            output_month = 'April';  
        } else if (month == 5){
            output_month = 'May';  
        } else if (month == 6){
            output_month = 'June';  
        } else if (month == 7){
            output_month = 'July';  
        } else if (month == 8){
            output_month = 'August';  
        } else if (month == 9){
            output_month = 'September';  
        } else if (month == 10){
            output_month = 'October';  
        } else if (month == 11){
            output_month = 'November';  
        } else if (month == 12){
            output_month = 'December';
        } else {
            output_month = 'Not a valid month';        
        }
        return output_month;
    }
    public string quarterSwitch(string monthNames){
        string output_Quarter = 'Enter a valid month name!';

        switch on monthNames {
            when 'January', 'February', 'Maarch' {
                output_Quarter = 'Quarter 1';
            }    
            when 'April', 'May', 'June ' {
                output_Quarter = 'Quarter 2';
            }    
            when 'July', 'August', 'September' {
                output_Quarter = 'Quarter 3';
            }    
            when 'October', 'November', 'December' {
                output_Quarter = 'Quarter 4';            
            }
            when else {
                output_Quarter = 'NOT a valid quarter.';
            }
        }
        return output_Quarter;
    }
}




