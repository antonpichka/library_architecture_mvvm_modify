import 'dart:core';

class ConcretiveMessageForView {
  static String getMessageForSearchBodyWidget(String key) {
    switch(key) {
      case "403":
        return "The server understood the request, but is refusing to fulfill it.";
      default:
        return key;
    }
  }
}