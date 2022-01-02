
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';

class BaseLocalListModel<T> {
  List<T> _localList = List.empty();
  BaseIterator _iterator;

  set setLocalList(List<T> list) {
    _localList = list;
  }

  List<T> get getLocalList {
    return _localList;
  }

  void setLocalListUsingAnIterator() {
    if(_iterator == null) {
      throw NullThrownError();
    }
    _localList = _iterator.getSortedList;
  }

  set setLocalIterator(BaseIterator newIterator) {
    _iterator = newIterator;
    _iterator.setList = _localList;
  }

}