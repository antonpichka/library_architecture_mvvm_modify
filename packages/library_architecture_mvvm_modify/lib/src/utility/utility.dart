/// Regular print renamed to debug print
/// Where to use ? - anywhere
void debugPrint(String text) {
  // ignore: avoid_print
  print(text);
}

/// The same as debug print, only painted red
/// Where to use ? - anywhere
void debugPrintException(String text) {
  debugPrint('\x1B[31m$text\x1B[0m');
}
