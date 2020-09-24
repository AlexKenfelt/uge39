/*1.a Create an integer array with the values 
 { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 } 
 1.b implement your own sorting algorithm for the int[] array, 
 by creating a method that takes in the int[] array and loops through
 it with a for loop. for every step in the for loop,
 you must compare the values of array[i] and array[i + 1] 
 and swap them if [i] is greater than [i + 1]. 
 1.c call the method created in 1.b in a while loop from setup(), 
 until the list is sorted. 
 1.d Add a boolean to keep track of when the list is sorted to avoid creating an infinite loop.*/

int [] valueArray = {8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2};

void setup() {
  print(sortArray(valueArray) + "\n");
  printArray(valueArray);
}

boolean sortArray(int [] array_) {
  for (int i = 0; i < array_.length; i++) {
    for (int b = 0; b < array_.length; b++) {
     if (array_[i] < array_[b]) {
        swapArrayIndex(array_, i, b);
      }
    }
  }
  return true;
}

void swapArrayIndex(int [] array_, int pos1, int pos2) {
  int tmpIndexHolder = array_[pos1];
  array_[pos1] = array_[pos2];
  array_[pos2] = tmpIndexHolder;
}
