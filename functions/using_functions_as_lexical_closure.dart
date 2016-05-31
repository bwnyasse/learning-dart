/**
 * Copyright (c) 2016 learning-dart. All rights reserved
 *
 * REDISTRIBUTION AND USE IN SOURCE AND BINARY FORMS,
 * WITH OR WITHOUT MODIFICATION, ARE NOT PERMITTED.
 *
 * DO NOT ALTER OR REMOVE THIS HEADER.
 *
 * Created on : 01/06/16
 * Author     : bwnyasse
 *
 */

// Functions can close over variables defined in surrounding scopes
main() {
  var add2 = makeAdder(2); // Create a function that adds 2.
  var add4 = makeAdder(4); // Create a function that adds 4.

  assert(add2(2) == 4);
  assert(add4(6) == 10);
  print("It's worked !");
}

/// Returns a function that adds [n] to the function's argument.
Function makeAdder(num n) {
  return (num i) => n + i;
}