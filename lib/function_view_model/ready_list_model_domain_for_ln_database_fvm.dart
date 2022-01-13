import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/protected_base_view_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

class ReadyListModelDomainForLNDatabaseFVM
{
  static Response<bool, BaseException> insertModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      ProtectedBaseViewModel protectedBaseViewModel)
  {
    return _codeForInsertMethod(
        baseViewModel,
        protectedBaseViewModel,
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter,
        EnumBaseModelDomainObjectOperationViewModel.insertModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> updateModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      ProtectedBaseViewModel protectedBaseViewModel,)
  {
    return _codeForUpdateMethod(
        baseViewModel,
        protectedBaseViewModel,
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter,
        EnumBaseModelDomainObjectOperationViewModel.updateModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> deleteModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      ProtectedBaseViewModel protectedBaseViewModel,)
  {
    return _codeForDeleteMethod(
        baseViewModel,
        protectedBaseViewModel,
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter,
        EnumBaseModelDomainObjectOperationViewModel.deleteModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> insertModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      ProtectedBaseViewModel protectedBaseViewModel)
  {
    return _codeForInsertMethod(
        baseViewModel,
        protectedBaseViewModel,
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter,
        EnumBaseModelDomainObjectOperationViewModel.insertModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> updateModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      ProtectedBaseViewModel protectedBaseViewModel)
  {
    return _codeForUpdateMethod(
        baseViewModel,
        protectedBaseViewModel,
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter,
        EnumBaseModelDomainObjectOperationViewModel.updateModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> deleteModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      ProtectedBaseViewModel protectedBaseViewModel)
  {
    return _codeForDeleteMethod(
        baseViewModel,
        protectedBaseViewModel,
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter,
        EnumBaseModelDomainObjectOperationViewModel.deleteModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> _codeForInsertMethod(
      BaseViewModel baseViewModel,
      ProtectedBaseViewModel protectedBaseViewModel,
      EnumBaseListModelDomainObjectOperationViewModel enumBaseListModelDomainObjectOperationViewModel,
      EnumBaseModelDomainObjectOperationViewModel enumBaseModelDomainObjectOperationViewModel)
  {
      var response = protectedBaseViewModel
          .getBaseListModelDomain(enumBaseListModelDomainObjectOperationViewModel)
          .insertModelToListModelDomain(baseViewModel.getModelDomain(enumBaseModelDomainObjectOperationViewModel)
      );
      if(response.isSuccessResponse) {
        return Response.success(response.getData);
      } else {
        return Response.exception(response.getException);
      }
  }

  static Response<bool, BaseException> _codeForUpdateMethod(
      BaseViewModel baseViewModel,
      ProtectedBaseViewModel protectedBaseViewModel,
      EnumBaseListModelDomainObjectOperationViewModel enumBaseListModelDomainObjectOperationViewModel,
      EnumBaseModelDomainObjectOperationViewModel enumBaseModelDomainObjectOperationViewModel)
  {
      var response = protectedBaseViewModel
          .getBaseListModelDomain(enumBaseListModelDomainObjectOperationViewModel)
          .updateModelToListModelDomain(baseViewModel.getModelDomain(enumBaseModelDomainObjectOperationViewModel)
      );
      if(response.isSuccessResponse) {
        return Response.success(response.getData);
      } else {
        return Response.exception(response.getException);
      }
  }

  static Response<bool, BaseException> _codeForDeleteMethod(
      BaseViewModel baseViewModel,
      ProtectedBaseViewModel protectedBaseViewModel,
      EnumBaseListModelDomainObjectOperationViewModel enumBaseListModelDomainObjectOperationViewModel,
      EnumBaseModelDomainObjectOperationViewModel enumBaseModelDomainObjectOperationViewModel)
  {
      var response = protectedBaseViewModel
          .getBaseListModelDomain(enumBaseListModelDomainObjectOperationViewModel)
          .deleteModelToListModelDomain(baseViewModel.getModelDomain(enumBaseModelDomainObjectOperationViewModel)
      );
      if(response.isSuccessResponse) {
        return Response.success(response.getData);
      } else {
        return Response.exception(response.getException);
      }
  }

}