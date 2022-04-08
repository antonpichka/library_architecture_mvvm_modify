import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

class ReadyListModelDomainForLNDatabaseFVM
{
  static Response<BaseTypeParameter, BaseException> insertModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForInsertModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> insertListModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForInsertListModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> updateModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForUpdateModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> updateListModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForUpdateListModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> deleteModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForDeleteModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> deleteListModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForDeleteListModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> insertModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForInsertModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> insertListModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForInsertListModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter
    );
  }


  static Response<BaseTypeParameter, BaseException> updateModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForUpdateModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> updateListModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForUpdateListModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> deleteModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForDeleteModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> deleteListModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _codeForDeleteListModelMethod(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> _codeForInsertModelMethod(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain,
      EnumBaseModelDomainVM enumBaseModelDomainObjectOperationViewModel)
  {
    var response = baseListModelDomain
        .insertModelToListModelDomain(baseViewModel.getModel(enumBaseModelDomainObjectOperationViewModel)
    );
    if(response.isSuccessResponse) {
      return Response.success(BoolTypeParameter(response.getData));
    } else {
      return Response.exception(response.getException);
    }
  }

  static Response<BaseTypeParameter, BaseException> _codeForInsertListModelMethod(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain,
      EnumBaseListModelDomainVM enumBaseListModelDomainObjectOperationViewModel)
  {
    var response = baseListModelDomain
        .insertListModelToListModelDomain(baseViewModel.getListModel(enumBaseListModelDomainObjectOperationViewModel)
    );
    if(response.isSuccessResponse) {
      return Response.success(BoolTypeParameter(response.getData));
    } else {
      return Response.exception(response.getException);
    }
  }

  static Response<BaseTypeParameter, BaseException> _codeForUpdateModelMethod(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain,
      EnumBaseModelDomainVM enumBaseModelDomainObjectOperationViewModel)
  {
      var response = baseListModelDomain
          .updateModelToListModelDomain(baseViewModel.getModel(enumBaseModelDomainObjectOperationViewModel)
      );
      if(response.isSuccessResponse) {
        return Response.success(BoolTypeParameter(response.getData));
      } else {
        return Response.exception(response.getException);
      }
  }

  static Response<BaseTypeParameter, BaseException> _codeForUpdateListModelMethod(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain,
      EnumBaseListModelDomainVM enumBaseListModelDomainObjectOperationViewModel)
  {
    var response = baseListModelDomain
        .updateListModelToListModelDomain(baseViewModel.getListModel(enumBaseListModelDomainObjectOperationViewModel)
    );
    if(response.isSuccessResponse) {
      return Response.success(BoolTypeParameter(response.getData));
    } else {
      return Response.exception(response.getException);
    }
  }

  static Response<BaseTypeParameter, BaseException> _codeForDeleteModelMethod(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain,
      EnumBaseModelDomainVM enumBaseModelDomainObjectOperationViewModel)
  {
    var response = baseListModelDomain
        .deleteModelToListModelDomain(baseViewModel.getModel(enumBaseModelDomainObjectOperationViewModel)
    );
    if(response.isSuccessResponse) {
      return Response.success(BoolTypeParameter(response.getData));
    } else {
      return Response.exception(response.getException);
    }
  }

  static Response<BaseTypeParameter, BaseException> _codeForDeleteListModelMethod(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain,
      EnumBaseListModelDomainVM enumBaseListModelDomainObjectOperationViewModel)
  {
    var response = baseListModelDomain
        .deleteListModelToListModelDomain(baseViewModel.getListModel(enumBaseListModelDomainObjectOperationViewModel)
    );
    if(response.isSuccessResponse) {
      return Response.success(BoolTypeParameter(response.getData));
    } else {
      return Response.exception(response.getException);
    }
  }

}