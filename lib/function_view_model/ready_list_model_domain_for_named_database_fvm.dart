import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

class ReadyListModelDomainForNamedDatabaseFVM
{
  static Response<BaseTypeParameter, BaseException> insertModelToListModelDomainForNamedDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForInsertModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> insertListModelToListModelDomainForNamedDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForInsertListModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> updateModelToListModelDomainForNamedDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForUpdateModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> updateListModelToListModelDomainForNamedDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForUpdateListModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> deleteModelToListModelDomainForNamedDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForDeleteModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> deleteListModelToListModelDomainForNamedDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForDeleteListModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> _methodForInsertModel(
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

  static Response<BaseTypeParameter, BaseException> _methodForInsertListModel(
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

  static Response<BaseTypeParameter, BaseException> _methodForUpdateModel(
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

  static Response<BaseTypeParameter, BaseException> _methodForUpdateListModel(
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

  static Response<BaseTypeParameter, BaseException> _methodForDeleteModel(
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

  static Response<BaseTypeParameter, BaseException> _methodForDeleteListModel(
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