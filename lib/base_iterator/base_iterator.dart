import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseIterator<T extends BaseModelDomain> implements Iterator<T> {
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