
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model.dart';

class ReadyIteratorListModelFVM {
 static bool callToMethodSetLocalIteratorAndSetLocalListModelUsingAnIterator(
      BaseListModel listModel,
      Enum selectedEnum,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator)
  {
    if(mapEnumAndBaseIterator.isEmpty) {
      return false;
    }
    mapEnumAndBaseIterator.forEach((itemEnum, baseIterator) {
      if(selectedEnum == itemEnum) {
        listModel.setLocalIterator = baseIterator;
      }
    });
    listModel.setLocalListUsingAnIterator();
    return true;
  }

  static bool callToMethodSetNetworkIteratorAndSetNetworkListModelUsingAnIterator(
      BaseListModel listModel,
      Enum selectedEnum,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator)
  {
    if(mapEnumAndBaseIterator.isEmpty) {
      return false;
    }
    mapEnumAndBaseIterator.forEach((itemEnum, baseIterator) {
      if(selectedEnum == itemEnum) {
        listModel.setNetworkIterator = baseIterator;
      }
    });
    listModel.setNetworkListUsingAnIterator();
    return true;
  }

}