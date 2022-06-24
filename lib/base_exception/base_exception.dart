import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';

abstract class BaseException implements Exception {
  final String _nameClass;
  
  BaseException(this._nameClass) {
    if (kDebugMode) {
      print("Debug ($_nameClass): ${exceptionInString()}");
    }
  }

  String exceptionInString();

  @nonVirtual
  String get getSelectedExceptionInString {
    if (this is DomainException) {
      return exceptionInString();
    } else if (this is LocalException) {
      return exceptionInString();
    } else if (this is NetworkException) {
      return exceptionInString();
    }
    if (kDebugMode) {
      print("Debug (Any): ${exceptionInString()}");
    }
    return exceptionInString();
  }
}