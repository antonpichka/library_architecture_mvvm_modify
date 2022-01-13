import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_iterator_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/protected_base_view_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyIteratorForBaseListModelLNDatabaseFVM
{
 static Response<bool,BaseException> callToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM(
      ProtectedBaseViewModel protectedBaseViewModel,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator)
  {
    var response = protectedBaseViewModel.selectIteratorViaEnumTypeParameter(
        mapEnumAndBaseIterator,
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter,
        EnumIteratorObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameter,
    );
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Response<bool,BaseException> callToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM(
      ProtectedBaseViewModel protectedBaseViewModel,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator)
  {
    var response = protectedBaseViewModel.selectIteratorViaEnumTypeParameter(
        mapEnumAndBaseIterator,
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter,
        EnumIteratorObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameter
    );
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }
}