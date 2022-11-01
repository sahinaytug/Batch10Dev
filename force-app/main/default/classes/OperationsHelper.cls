public class OperationsHelper {
    public decimal largestOutOfTwoNumbers(decimal a, decimal b){
      
        decimal largestNum = 0;
        if (a>b){
            system.debug('largest number is ' + a);
        }else{
            system.debug('largest number is ' + b);
        }
        return largestNum;
    }

    public decimal  smallestOutOfThreeNumbers( decimal x, decimal y, decimal z){
        decimal smallestNum = 0;
        if (x<y && x<z){
        system.debug('Smalest numberis ' + x);
        }else if(y<x&& y<z){
            system.debug('Smalest numberis ' + y);
        }else if(z<x && z<y){
            system.debug('Smalest numberis ' + z);  
        }
        return smallestNum;
    }

    public integer sumOfPositiveIntegers(integer n){
            integer sum;
            if(n<0){
                sum= null;
                system.debug('Negatif number');
            }else{
                sum=0;
                for(integer i=1; i<=n; i++){
                    sum=sum+i;
                }
            }
            return sum;
        }
    }