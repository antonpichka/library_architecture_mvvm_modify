import 'package:flutter/foundation.dart';

const constDeveloper = "Developer";

void printError(String text) {
  if (kDebugMode) {
    print('\x1B[31m$text\x1B[0m');
  }
}

void printWarning(String text) {
  if (kDebugMode) {
    print('\x1B[33m$text\x1B[0m');
  }
}