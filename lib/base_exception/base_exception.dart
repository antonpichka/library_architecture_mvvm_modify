import 'package:flutter/foundation.dart';

abstract class BaseException {
  final String _nameClass;
  
  BaseException(this._nameClass) {
    if (kDebugMode) {
      print("Debug ($_nameClass): ${exceptionInString()}");
    }
  }
  
  String exceptionInString();
}