import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyIteratorForListModelLNDatabaseFVM
{
 static Response<bool,BaseException> callToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM(
      BaseViewModel viewModel,
      BaseListModelDomain listModel,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator)
  {
    if(mapEnumAndBaseIterator.isEmpty) {
      return false;
    }
    int i = 0;
    mapEnumAndBaseIterator.forEach((itemEnum, baseIterator) {
      if(viewModel
          .getEnumTypeParameterForCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM
          .getParameter == itemEnum)
      {
        listModel.setIterator = baseIterator;
      }

      i++;
      if(i >= mapEnumAndBaseIterator.length) {
        if(listModel.isEqualsNullForIterator) {
          listModel.setIterator = mapEnumAndBaseIterator[0];
        }
      }
    });

    listModel.setListModelDomainUsingAnIterator();
    return true;
  }

  static Response<bool,BaseException> callToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM(
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