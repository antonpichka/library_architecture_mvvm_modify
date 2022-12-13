import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract class BaseIterator<T extends BaseModel>
    implements Iterator<T>
{
  List<T>? _list;

  @nonVirtual
  List<T> get getSortedListByParameterList {
    List<T> list = List.empty(growable: true);
    while(moveNext()) {
      T item = current;
      list.add(item);
    }
    _list = list;
    return _list!;
  }

  @protected
  @nonVirtual
  List<T> get getParameterList => _list!;

  @nonVirtual
  set setParameterList(List<T> list) => _list = list;
}