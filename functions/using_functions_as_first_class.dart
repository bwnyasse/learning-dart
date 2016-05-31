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

// You can pass a function as a parameter to another function
main() {
  var list = [1, 2, 3];
  list.forEach(printElement); // Pass printElement as a parameter.
}

printElement(element) => print("current is : $element");