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


// Optional parameters can be either positional or named, but not both.
main() {
  // variable
  String surnameValue = "Boris-Wilfried";
  String nameValue = "Nyasse";

  // Named params
  optional_named_parameters(surname: surnameValue, name: nameValue);
  optional_named_parameters_with_default_value(surname: surnameValue, name: nameValue);

  // positional params
  optional_positional_parameters(surnameValue, nameValue);
  optional_positional_parameters(surnameValue, nameValue, "Cameroon");
  optional_positional_parameters_with_default_value(surnameValue,nameValue);
}

optional_named_parameters({String surname, String name}) =>
    print(" My name is $surname $name ");

optional_named_parameters_with_default_value(
    {String surname, String name, bool isDad: true}) =>
    print(" My name is $surname $name " + (isDad ? " : I\'m happy dad" : ""));

optional_positional_parameters(String surname, String name,
    [String country]) =>
    print(" I am $surname $name " + (country != null ? "from $country" : ""));

optional_positional_parameters_with_default_value(String surname, String name,
    [String country = "France"]) =>
    print(" I am $surname $name " +
        (country != null ? "living in $country" : ""));