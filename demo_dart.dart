// Define a function.
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// This is where the app starts executing.
void main() {
  var number = 42;
  if(number is Object){
    print("number is Object");
  } // Declare and initialize a variable.
  printInteger(number); // Call a function.
}