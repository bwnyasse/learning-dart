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

/// The as , is , and is! operators are handy for checking types at runtime.
main() {
  Car car = new Car();
  car.type = "car";
  car.name = "Aston Martin";

  // type check with is
  if(car is Car){
    print(" ${car.name} is a car");
  }

  if(car is! Person ) {
    print(" ${car.name} is not a car");
  }

  // You can make the code shorter using the as operator
  print("Using cast : ${(car as Car).name}  is a name");

}

class Person{}

class Machine {
  String type;
}

class Car extends Machine {
  String name;

  Car() {
    type = "car";
  }
}