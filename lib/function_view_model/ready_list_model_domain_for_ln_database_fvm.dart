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
    return _methodForInsertModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> insertListModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForInsertListModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> updateModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForUpdateModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> updateListModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForUpdateListModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> deleteModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForDeleteModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> deleteListModelToListModelDomainForLocalDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForDeleteListModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> insertModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForInsertModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> insertListModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForInsertListModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter
    );
  }


  static Response<BaseTypeParameter, BaseException> updateModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForUpdateModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> updateListModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForUpdateListModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> deleteModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForDeleteModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter
    );
  }

  static Response<BaseTypeParameter, BaseException> deleteListModelToListModelDomainForNetworkDatabaseFVM(
      BaseViewModel baseViewModel,
      BaseListModelDomain baseListModelDomain)
  {
    return _methodForDeleteListModel(
        baseViewModel,
        baseListModelDomain,
        EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter
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