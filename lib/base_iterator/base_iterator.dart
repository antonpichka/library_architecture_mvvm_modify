import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseIterator<T extends BaseModelDomain> implements Iterator<T> {
  List<T> _listModelDomain;

  @nonVirtual
  List<T> get getSortedListModelDomain {
    List<T> listModelDomain = List.empty(growable: true);
    while(moveNext()) {
      var item = current;
      listModelDomain.add(item);
    }
    return listModelDomain;
  }

  @protected
  @nonVirtual
  List<T> get getListModelDomain => _listModelDomain;

  @nonVirtual
  set setParameterListModelDomain(List<T> listModelDomain) {
    _listModelDomain = listModelDomain;
  }
}