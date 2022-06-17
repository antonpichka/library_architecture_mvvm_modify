import 'package:flutter/foundation.dart';

abstract class BaseIterator<T> implements Iterator<T> {
  List<T> _list;

  @nonVirtual
  List<T> get getSortedList {
    List<T> list = List.empty(growable: true);
    while(moveNext()) {
      var item = current;
      list.add(item);
    }
    return list;
  }

  @nonVirtual
  set setList(List<T> newItems) {
    _list = newItems;
  }

  @protected
  @nonVirtual
  List<T> get getList => _list;
}