import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract class BaseIterator<T extends BaseModel>
    implements Iterator<T>
{
  List<T> _listModel;

  @nonVirtual
  List<T> get getSortedListModel {
    List<T> listModel = List.empty(growable: true);
    while(moveNext()) {
      T itemModel = current;
      listModel.add(itemModel);
    }
    return listModel;
  }

  @protected
  @nonVirtual
  List<T> get getListModel => _listModel;

  @nonVirtual
  set setParameterListModel(List<T> listModel) {
    _listModel = listModel;
  }
}