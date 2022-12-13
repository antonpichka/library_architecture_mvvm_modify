import 'package:flutter/foundation.dart';

void debugPrint(String text) {
  if (kDebugMode) {
    print(text);
  }
}

void debugPrintException(String text) {
  debugPrint('\x1B[31m$text\x1B[0m');
}