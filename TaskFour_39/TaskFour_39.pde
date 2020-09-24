/*4.a Write a method that takes in an integer as a parameter and
prints all values between 0 and 100 that are divisible by the parameter received.

4.b add the following array to your code: int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 }

4.c Write a method that returns a random element from the above array.

4.d Write a function that takes an integer as a parameter and prints the number.
After that, it subtracts one from the input and calls itself again (recursion).
If the input is less than zero, it should no longer call itself.

4.e Write a function that takes two integers as parameters and prints both of them seperated by a tab ( \t ).
Then have the function calculate and print the fibunacci sequence by calling itself. 
If the input is greater than 10000, then stop. Start the function by calling it from setup with the input (1, 1). */

//4.b
int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };

void setup() {
   println("4.a: "); 
   divisible(45);
   println();
   
   println("4.c: ");
   println(getRandom(arr));
  
   println("4.d: ");
   printAllNumbers(666);
   println();
   
   println("4.e: ");
   fibonacciSequence(1,2);
}

//4.a
void divisible(int i) {
 for(int j = 1; j <= 100; j++) {
   if (i % j == 0) {
     println(i + " is divisable by: " + j);
   }
 }
}

//4.c
int getRandom(int[] a) {
  return a[(int)random(a.length)];
}

//4.d
void printAllNumbers(int input) {
 if(input < 0) return;
 print(input + " ");
 printAllNumbers(input - 1);
}

//4.e
void fibonacciSequence(int a, int b) {
  if(a>10000) return;
    println(a + "\t" + b);
    
  fibonacciSequence(b, a + b); 
}
