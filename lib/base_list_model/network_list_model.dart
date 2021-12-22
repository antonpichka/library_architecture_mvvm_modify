
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';

class NetworkListModel<T> {
  List<T> _networkList = List.empty();
  BaseIterator _iterator;
  
  set setNetworkList(List<T> list) {
    _networkList = list;
  }

  List<T> get getNetworkList {
    return _networkList;
  }

  void setNetworkListUsingAnIterator() {
    if(_iterator == null) {
      throw NullThrownError();
    }
    _networkList = _iterator.getSortedList;
  }

  set setNetworkIterator(BaseIterator newIterator) {
    _iterator = newIterator;
    _iterator.setList = _networkList;
  }

}