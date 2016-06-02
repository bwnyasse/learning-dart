/**
 * Copyright (c) 2016 learning-dart. All rights reserved
 *
 * REDISTRIBUTION AND USE IN SOURCE AND BINARY FORMS,
 * WITH OR WITHOUT MODIFICATION, ARE NOT PERMITTED.
 *
 * DO NOT ALTER OR REMOVE THIS HEADER.
 *
 * Created on : 02/06/16
 * Author     : bwnyasse
 *
 */

main() {
  captureException(0, openDoor);
  captureException(1, openDoor);
  captureException(2, openDoor);
}

class DoorLockerError extends StateError {
  DoorLockerError(String message) : super(message);
}

Function captureException(int val, Function func) {
  try {
    func(val);
  } on DoorLockerError {
    // A specific exception
    print("Know Exception");
  } on Exception catch (e) {
    // Anything else that is an exception
    print('Unknown exception: $e');
  } catch (e) {
    print('Something really unknown: $e'); // No specified type, handles all
  }
}

bool openDoor(int capture) {
  switch (capture) {
    case 0:
      throw new DoorLockerError('door locked');
      break;
    case 1:
      throw new Exception('door locked');
      break;
    case 2:
      throw new StateError('State error');
      break;
  }
}


