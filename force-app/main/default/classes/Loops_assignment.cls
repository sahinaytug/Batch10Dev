public  class Loops_assignment {
    // Day 8 Assignment
// Write a factorial of the number if input given as 5
// (5 *4 *3 *2 *1)
// Task 1:
// Create a class as Loops_assignment 
// Create a constructor
// Define a variable integer factorialvalue = 1
// Create a method called Forloops which return integer accept 
// input as integer n
// Write a for loop statement from 1 to n like int
// In the for loop factorialvalue = factorialvalue * individual 
// number for every iteration
// Return the value of factorialvalue after for loop
// Create apex loop_assignment.apex
// Call method Forloops with value as 5.

    
    Integer factorialValue = 1;

    public Loops_assignment() {
        forLoops(factorialValue);
        system.debug('Factor value calculated==>');

    }

    public Integer forLoops( Integer n){
        for (integer  i = 1; i<= n; i++) {
            factorialValue = factorialValue * i;

        }
        return factorialValue;
    }
}

