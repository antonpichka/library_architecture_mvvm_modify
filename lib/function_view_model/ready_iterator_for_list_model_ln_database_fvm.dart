import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyIteratorForListModelLNDatabaseFVM
{
 static bool callToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM(
      BaseViewModel viewModel,
      BaseListModelDomain listModel,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator)
  {
    if(mapEnumAndBaseIterator.isEmpty) {
      return false;
    }
    mapEnumAndBaseIterator.forEach((itemEnum, baseIterator) {
      if(viewModel
          .getEnumTypeParameterForCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM
          .getParameter == itemEnum)
      {
        listModel.setIteratorForListModelLocalDatabase = baseIterator;
      }
    });
    listModel.setListModelLocalDatabaseUsingAnIterator();
    return true;
  }

  static bool callToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM(
      BaseViewModel viewModel,
      BaseListModelDomain listModel,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator)
  {
    if(mapEnumAndBaseIterator.isEmpty) {
      return false;
    }
    mapEnumAndBaseIterator.forEach((itemEnum, baseIterator) {
      if(viewModel
          .getEnumTypeParameterForCallToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM
          .getParameter == itemEnum)
      {
        listModel.setIteratorForListModelNetworkDatabase = baseIterator;
      }
    });
    listModel.setListModelNetworkDatabaseUsingAnIterator();
    return true;
  }

}