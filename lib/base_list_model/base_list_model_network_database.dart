
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';

class BaseListModelNetworkDatabase<T> {
  List<T> _listModelNetworkDatabase = List.empty();
  BaseIterator _iterator;
  
  set setListModelNetworkDatabase(List<T> list) {
    _listModelNetworkDatabase = list;
  }

  List<T> get getListModelNetworkDatabase {
    return _listModelNetworkDatabase;
  }

  void setListModelNetworkDatabaseUsingAnIterator() {
    if(_iterator == null) {
      throw NullThrownError();
    }
    _listModelNetworkDatabase = _iterator.getSortedList;
  }

  set setIteratorForListModelNetworkDatabase(BaseIterator newIterator) {
    _iterator = newIterator;
    _iterator.setList = _listModelNetworkDatabase;
  }

}