
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';

class BaseListModelLocalDatabase<T> {
  List<T> _listModelLocalDatabase = List.empty();
  BaseIterator _iterator;

  set setListModelLocalDatabase(List<T> list) {
    _listModelLocalDatabase = list;
  }

  List<T> get getListModelLocalDatabase {
    return _listModelLocalDatabase;
  }

  void setListModelLocalDatabaseUsingAnIterator() {
    if(_iterator == null) {
      throw NullThrownError();
    }
    _listModelLocalDatabase = _iterator.getSortedList;
  }

  set setIteratorForListModelLocalDatabase(BaseIterator newIterator) {
    _iterator = newIterator;
    _iterator.setList = _listModelLocalDatabase;
  }

}