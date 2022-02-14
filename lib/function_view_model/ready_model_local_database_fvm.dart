
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source_and_delete_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source_and_delete_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source_and_insert_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source_and_insert_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source_and_update_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source_and_update_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source_and_delete_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source_and_delete_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source_and_insert_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source_and_insert_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source_and_update_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source_and_update_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source_and_delete_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source_and_delete_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source_and_insert_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source_and_insert_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source_and_update_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source_and_update_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelLocalDatabaseFVM
{
  static Future<Response<bool, BaseException>> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource,
      BaseListModelDomain baseListModelDomain
      ) async
  {
    var response = await getListModelFromLocalDatabaseDataSource
        .getListModelFromLocalDatabaseDataSource();
    if(response.isSuccessResponse) {
      baseListModelDomain.setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseFVMAndDeleteListModelToLocalDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseDataSourceAndDeleteListModelToLocalDatabaseThereIsParameterDataSource get
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseDataSourceAndDeleteListModelToLocalDatabaseThereIsParameterDataSource();
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseFVMAndDeleteListModelToNetworkDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseDataSourceAndDeleteListModelToNetworkDatabaseThereIsParameterDataSource get
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseDataSourceAndDeleteListModelToNetworkDatabaseThereIsParameterDataSource();
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseFVMAndInsertListModelToLocalDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseDataSourceAndInsertListModelToLocalDatabaseThereIsParameterDataSource get
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseDataSourceAndInsertListModelToLocalDatabaseThereIsParameterDataSource();
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseFVMAndInsertListModelToNetworkDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseDataSourceAndInsertListModelToNetworkDatabaseThereIsParameterDataSource get
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseDataSourceAndInsertListModelToNetworkDatabaseThereIsParameterDataSource();
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseFVMAndUpdateListModelToLocalDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseDataSourceAndUpdateListModelToLocalDatabaseThereIsParameterDataSource get
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseDataSourceAndUpdateListModelToLocalDatabaseThereIsParameterDataSource();
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseFVMAndUpdateListModelToNetworkDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseDataSourceAndUpdateListModelToNetworkDatabaseThereIsParameterDataSource get
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseDataSourceAndUpdateListModelToNetworkDatabaseThereIsParameterDataSource();
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource,
      BaseListModelDomain baseListModelDomain,
      BaseTypeParameter baseTypeParameter
      ) async
  {
    var response = await getListModelFromLocalDatabaseThereIsParameterDataSource
        .getListModelFromLocalDatabaseThereIsParameterDataSource(
         baseTypeParameter
    );
    if(response.isSuccessResponse) {
      baseListModelDomain.setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseThereIsParameterFVMAndDeleteListModelToLocalDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseThereIsParameterDataSourceAndDeleteListModelToLocalDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseThereIsParameterDataSourceAndDeleteListModelToLocalDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseThereIsParameterFVMAndDeleteListModelToNetworkDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseThereIsParameterDataSourceAndDeleteListModelToNetworkDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseThereIsParameterDataSourceAndDeleteListModelToNetworkDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseThereIsParameterFVMAndInsertListModelToLocalDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseThereIsParameterDataSourceAndInsertListModelToLocalDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseThereIsParameterDataSourceAndInsertListModelToLocalDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseThereIsParameterFVMAndInsertListModelToNetworkDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseThereIsParameterDataSourceAndInsertListModelToNetworkDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseThereIsParameterDataSourceAndInsertListModelToNetworkDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseThereIsParameterFVMAndUpdateListModelToLocalDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseThereIsParameterDataSourceAndUpdateListModelToLocalDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseThereIsParameterDataSourceAndUpdateListModelToLocalDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getListModelFromLocalDatabaseThereIsParameterFVMAndUpdateListModelToNetworkDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseThereIsParameterDataSourceAndUpdateListModelToNetworkDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getListModelFromLocalDatabaseThereIsParameterDataSourceAndUpdateListModelToNetworkDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      BaseViewModel baseViewModel,
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource,
      BaseTypeParameter baseTypeParameter
      ) async
  {
    var response = await getModelFromLocalDatabaseThereIsParameterDataSource
        .getModelFromLocalDatabaseThereIsParameterDataSource(
        baseTypeParameter
    );
    if(response.isSuccessResponse) {
      baseViewModel.setModel(
          response.getData.toBaseModelDomain(),
          EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter
      );
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getModelFromLocalDatabaseThereIsParameterFVMAndDeleteModelToLocalDatabaseThereIsParameterFVM(
      GetModelFromLocalDatabaseThereIsParameterDataSourceAndDeleteModelToLocalDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getModelFromLocalDatabaseThereIsParameterDataSourceAndDeleteModelToLocalDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getModelFromLocalDatabaseThereIsParameterFVMAndDeleteModelToNetworkDatabaseThereIsParameterFVM(
      GetModelFromLocalDatabaseThereIsParameterDataSourceAndDeleteModelToNetworkDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getModelFromLocalDatabaseThereIsParameterDataSourceAndDeleteModelToNetworkDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getModelFromLocalDatabaseThereIsParameterFVMAndInsertModelToLocalDatabaseThereIsParameterFVM(
      GetModelFromLocalDatabaseThereIsParameterDataSourceAndInsertModelToLocalDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getModelFromLocalDatabaseThereIsParameterDataSourceAndInsertModelToLocalDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getModelFromLocalDatabaseThereIsParameterFVMAndInsertModelToNetworkDatabaseThereIsParameterFVM(
      GetModelFromLocalDatabaseThereIsParameterDataSourceAndInsertModelToNetworkDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getModelFromLocalDatabaseThereIsParameterDataSourceAndInsertModelToNetworkDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getModelFromLocalDatabaseThereIsParameterFVMAndUpdateModelToLocalDatabaseThereIsParameterFVM(
      GetModelFromLocalDatabaseThereIsParameterDataSourceAndUpdateModelToLocalDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getModelFromLocalDatabaseThereIsParameterDataSourceAndUpdateModelToLocalDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> getModelFromLocalDatabaseThereIsParameterFVMAndUpdateModelToNetworkDatabaseThereIsParameterFVM(
      GetModelFromLocalDatabaseThereIsParameterDataSourceAndUpdateModelToNetworkDatabaseThereIsParameterDataSource get,
      BaseTypeParameter parameter
      ) async
  {
    var response = await get
        .getModelFromLocalDatabaseThereIsParameterDataSourceAndUpdateModelToNetworkDatabaseThereIsParameterDataSource(parameter);
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> insertModelToLocalDatabaseThereIsParameterFVM(
      BaseViewModel baseViewModel,
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await insertModelToLocalDatabaseThereIsParameterDataSource
        .insertModelToLocalDatabaseThereIsParameterDataSource(
        baseViewModel
            .getModel(EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter)
            .toBaseModelLocalDatabase()
    );
    if (response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> insertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
      BaseModelDomain baseModelDomain,
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await insertModelToLocalDatabaseThereIsParameterDataSource
        .insertModelToLocalDatabaseThereIsParameterDataSource(
        baseModelDomain.toBaseModelLocalDatabase()
    );
    if (response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> insertListModelToLocalDatabaseThereIsParameterFVM(
      BaseListModelDomain baseListModelDomain,
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await insertListModelToLocalDatabaseThereIsParameterDataSource
        .insertListModelToLocalDatabaseThereIsParameterDataSource(
        baseListModelDomain.toBaseListModelLocalDatabase()
    );
    if (response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

 static Future<Response<bool, BaseException>> updateModelToLocalDatabaseThereIsParameterFVM(
      BaseViewModel baseViewModel,
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      ) async
 {
    var response = await updateModelToLocalDatabaseThereIsParameterDataSource
        .updateModelToLocalDatabaseThereIsParameterDataSource(
        baseViewModel
            .getModel(EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter)
            .toBaseModelLocalDatabase()
      );
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> updateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
      BaseModelDomain baseModelDomain,
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await updateModelToLocalDatabaseThereIsParameterDataSource
        .updateModelToLocalDatabaseThereIsParameterDataSource(
        baseModelDomain.toBaseModelLocalDatabase()
    );
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> updateListModelToLocalDatabaseThereIsParameterFVM(
      BaseListModelDomain baseListModelDomain,
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await updateListModelToLocalDatabaseThereIsParameterDataSource
        .updateListModelToLocalDatabaseThereIsParameterDataSource(
        baseListModelDomain.toBaseListModelLocalDatabase()
    );
    if (response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

 static Future<Response<bool, BaseException>> deleteModelToLocalDatabaseThereIsParameterFVM(
      BaseViewModel baseViewModel,
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      ) async
 {
    var response =  await deleteModelToLocalDatabaseThereIsParameterDataSource
        .deleteModelToLocalDatabaseThereIsParameterDataSource(
        baseViewModel
            .getModel(EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter)
            .toBaseModelLocalDatabase()
    );
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> deleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
      BaseModelDomain baseModelDomain,
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response =  await deleteModelToLocalDatabaseThereIsParameterDataSource
        .deleteModelToLocalDatabaseThereIsParameterDataSource(
        baseModelDomain.toBaseModelLocalDatabase()
    );
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> deleteListModelToLocalDatabaseThereIsParameterFVM(
      BaseListModelDomain baseListModelDomain,
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await deleteListModelToLocalDatabaseThereIsParameterDataSource
        .deleteListModelToLocalDatabaseThereIsParameterDataSource(
        baseListModelDomain.toBaseListModelLocalDatabase()
    );
    if (response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

}