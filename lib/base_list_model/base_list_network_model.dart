
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';

class BaseListNetworkModel<T> {
  List<T> _listNetworkModel = List.empty();
  BaseIterator _iterator;
  
  set setListNetworkModel(List<T> list) {
    _listNetworkModel = list;
  }

  List<T> get getListNetworkModel {
    return _listNetworkModel;
  }

  void setListNetworkModelUsingAnIterator() {
    if(_iterator == null) {
      throw NullThrownError();
    }
    _listNetworkModel = _iterator.getSortedList;
  }

  set setNetworkIterator(BaseIterator newIterator) {
    _iterator = newIterator;
    _iterator.setList = _listNetworkModel;
  }

}