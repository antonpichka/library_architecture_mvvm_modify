
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyListModelIteratorFVM
{
 static bool callToMethodSetLocalIteratorAndSetLocalListModelUsingAnIteratorFVM(
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

  static bool callToMethodSetNetworkIteratorAndSetNetworkListModelUsingAnIteratorFVM(
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