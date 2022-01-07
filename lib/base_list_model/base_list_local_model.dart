
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';

class BaseListLocalModel<T> {
  List<T> _listLocalModel = List.empty();
  BaseIterator _iterator;

  set setListLocalModel(List<T> list) {
    _listLocalModel = list;
  }

  List<T> get getListLocalModel {
    return _listLocalModel;
  }

  void setListLocalModelUsingAnIterator() {
    if(_iterator == null) {
      throw NullThrownError();
    }
    _listLocalModel = _iterator.getSortedList;
  }

  set setLocalIterator(BaseIterator newIterator) {
    _iterator = newIterator;
    _iterator.setList = _listLocalModel;
  }

}