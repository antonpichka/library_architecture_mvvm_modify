import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

class ReadyListModelDomainForLNDatabaseFVM
{
  static Response<bool, BaseException> insertModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForInsertMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> updateModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForUpdateMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> deleteModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForDeleteMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> insertModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForInsertMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> updateModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForUpdateMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> deleteModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForDeleteMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<bool, BaseException> _codeForInsertMethod(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain,
      EnumBaseModelDomainVM enumBaseModelDomainObjectOperationViewModel)
  {
      var response = baseListModelDomain
          .insertModelToListModelDomain(baseViewModel.getModel(enumBaseModelDomainObjectOperationViewModel)
      );
      if(response.isSuccessResponse) {
        return Response.success(response.getData);
      } else {
        return Response.exception(response.getException);
      }
  }

  static Response<bool, BaseException> _codeForUpdateMethod(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain,
      EnumBaseModelDomainVM enumBaseModelDomainObjectOperationViewModel)
  {
      var response = baseListModelDomain
          .updateModelToListModelDomain(baseViewModel.getModel(enumBaseModelDomainObjectOperationViewModel)
      );
      if(response.isSuccessResponse) {
        return Response.success(response.getData);
      } else {
        return Response.exception(response.getException);
      }
  }

  static Response<bool, BaseException> _codeForDeleteMethod(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain,
      EnumBaseModelDomainVM enumBaseModelDomainObjectOperationViewModel)
  {
      var response = baseListModelDomain
          .deleteModelToListModelDomain(baseViewModel.getModel(enumBaseModelDomainObjectOperationViewModel)
      );
      if(response.isSuccessResponse) {
        return Response.success(response.getData);
      } else {
        return Response.exception(response.getException);
      }
  }

}