import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyListModelIteratorFVM
{
 static bool callToMethodSetLocalIteratorAndSetLocalListModelUsingAnIteratorFVM(
      BaseViewModel viewModel,
      BaseListModel listModel,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator)
  {
    if(mapEnumAndBaseIterator.isEmpty) {
      return false;
    }
    mapEnumAndBaseIterator.forEach((itemEnum, baseIterator) {
      if(viewModel
          .getEnumTypeParameterForCallToMethodSetLocalIteratorAndSetLocalListModelUsingAnIteratorFVM
          .getParameter == itemEnum)
      {
        listModel.setLocalIterator = baseIterator;
      }
    });
    listModel.setLocalListUsingAnIterator();
    return true;
  }

  static bool callToMethodSetNetworkIteratorAndSetNetworkListModelUsingAnIteratorFVM(
      BaseViewModel viewModel,
      BaseListModel listModel,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator)
  {
    if(mapEnumAndBaseIterator.isEmpty) {
      return false;
    }
    mapEnumAndBaseIterator.forEach((itemEnum, baseIterator) {
      if(viewModel
          .getEnumTypeParameterForCallToMethodSetNetworkIteratorAndSetNetworkListModelUsingAnIteratorFVM
          .getParameter == itemEnum)
      {
        listModel.setNetworkIterator = baseIterator;
      }
    });
    listModel.setNetworkListUsingAnIterator();
    return true;
  }

}