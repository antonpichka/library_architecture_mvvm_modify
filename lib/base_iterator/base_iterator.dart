import 'package:flutter/cupertino.dart';

abstract class BaseIterator<T> implements Iterator<T> {
  List<T> _list;

  set setList(List<T> newItems) {
    this._list = newItems;
  }
  
  @protected
  List<T> get getList => _list;

  List<T> get getSortedList {
    List<T> list = List.empty();
    while(moveNext()) {
      var item = current;
      list.add(item);
    }
    return list;
  }
}