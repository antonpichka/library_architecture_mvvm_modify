import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_from_function_view_model/extends_function_view_from_function_view_model/get_list_model_from_database_fvffvm/get_list_model_from_local_database_fvffvm.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_there_is_parameter_fvm/get_list_model_from_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/model_local_database_for_one_entry_fvm.dart';

 /* 4 methods for 1 methods owned by classes FunctionViewModel

 /*  Start Variant: No There Is Parameter */

 /*
   1) void FUNCTION_VIEW_MODEL
   2) void FUNCTION_VIEW_MODEL and NotifyStream.. ModelDomain/ListModelDomain
 */

 /*  End Variant: No There Is Parameter */

 /* Start Variant: There Is Parameter */

 /*
   1) void FUNCTION_VIEW_MODEL
   2) void FUNCTION_VIEW_MODEL and NotifyStream.. ModelDomain/ListModelDomain
   3) void set.. BaseParameter/ModelDomain and FUNCTION_VIEW_MODEL
   4) void set.. BaseParameter/ModelDomain and FUNCTION_VIEW_MODEL and NotifyStream.. ModelDomain/ListModelDomain
 */

  /* End Variant: There Is Parameter */

  */

class BaseFunctionViewFromFunctionViewModel {

  static final GetListModelFromLocalDatabaseFVFFVM _getListModelFromLocalDatabaseFVFFVM = GetListModelFromLocalDatabaseFVFFVM();

  /* Start Method CallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM */

  static GetListModelFromLocalDatabaseFVFFVM get getListModelFromLocalDatabaseFVFFVM {
    return _getListModelFromLocalDatabaseFVFFVM;
  }

  /* End Method CallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM */

  /* Start Method CallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM */

  static Future<void> callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseFVM getListModelFromNetworkDatabaseFVM,
      Function functionForResultSuccess,
      Function(String) functionForResultError
      ) async
  {
    String response = await FunctionViewModel
        .callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
        getListModelFromNetworkDatabaseFVM
    );
    _afterCodeIsCheckResponse(
        response,
        functionForResultSuccess,
        functionForResultError
    );
  }

  static Future<void> callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVMAndNotifyStreamListModelDomainNetworkDatabase(
      GetListModelFromNetworkDatabaseFVM getListModelFromNetworkDatabaseFVM,
      BaseViewModel baseViewModel,
      Function functionForResultSuccess,
      Function(String) functionForResultError
      ) async
  {
    String response = await FunctionViewModel
        .callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
        getListModelFromNetworkDatabaseFVM
    );
    _afterCodeIsCheckResponseAndNotifyStreamListModelDomainNetworkDatabase(
        response,
        baseViewModel,
        functionForResultSuccess,
        functionForResultError
    );
  }

  /* Start Method CallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM */

  static Future<void> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseThereIsParameterFVM getListModelFromLocalDatabaseThereIsParameterFVM,
      Function functionForResultSuccess,
      Function(String) functionForResultError
      ) async
  {
    String response = await FunctionViewModel
        .callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromLocalDatabaseThereIsParameterFVM
    );
    _afterCodeIsCheckResponse(
        response,
        functionForResultSuccess,
        functionForResultError
    );
  }

  static Future<void> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMAndNotifyStreamListModelDomainLocalDatabase(
      GetListModelFromLocalDatabaseThereIsParameterFVM getListModelFromLocalDatabaseThereIsParameterFVM,
      BaseViewModel baseViewModel,
      Function functionForResultSuccess,
      Function(String) functionForResultError
      ) async
  {
    String response = await FunctionViewModel
        .callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromLocalDatabaseThereIsParameterFVM
    );
    _afterCodeIsCheckResponseAndNotifyStreamListModelDomainLocalDatabase(
        response,
        baseViewModel,
        functionForResultSuccess,
        functionForResultError
    );
  }

  static Future<void> setBaseTypeParameterAndCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseThereIsParameterFVM getListModelFromLocalDatabaseThereIsParameterFVM,
      BaseViewModel baseViewModel,
      BaseTypeParameter baseTypeParameter,
      Function functionForResultSuccess,
      Function(String) functionForResultError,
      Future<String> method
      ) async
  {
    baseViewModel.setBaseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM = baseTypeParameter;
    
    String response = await FunctionViewModel
        .callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromLocalDatabaseThereIsParameterFVM
    );

    _afterCodeIsCheckResponse(
        response,
        functionForResultSuccess,
        functionForResultError
    );
  }

  static Future<void> setBaseTypeParameterAndCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMAndNotifyStreamListModelDomainLocalDatabase(
      GetListModelFromLocalDatabaseThereIsParameterFVM getListModelFromLocalDatabaseThereIsParameterFVM,
      BaseViewModel baseViewModel,
      BaseTypeParameter baseTypeParameter,
      Function functionForResultSuccess,
      Function(String) functionForResultError
      ) async
  {
    baseViewModel.setBaseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM = baseTypeParameter;

    String response = await FunctionViewModel
        .callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromLocalDatabaseThereIsParameterFVM
    );
    _afterCodeIsCheckResponseAndNotifyStreamListModelDomainLocalDatabase(
        response,
        baseViewModel,
        functionForResultSuccess,
        functionForResultError
    );
  }

  /* End Method CallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM */

  /* Start Method InsertModelToLocalDatabaseForOneEntryThereIsParameterFVM */

  static Future<void> insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(
      ModelLocalDatabaseForOneEntryFVM modelLocalDatabaseForOneEntryFVM,
      Function functionForResultSuccess,
      Function(String) functionForResultError
      ) async
  {
    String response = await FunctionViewModel
        .insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(
        modelLocalDatabaseForOneEntryFVM
    );
    _afterCodeIsCheckResponse(
        response,
        functionForResultSuccess,
        functionForResultError
    );
  }

  static Future<void> insertModelToLocalDatabaseForOneEntryThereIsParameterFVMAndNotifyStreamModelDomain(
      ModelLocalDatabaseForOneEntryFVM modelLocalDatabaseForOneEntryFVM,
      BaseViewModel baseViewModel,
      Enum operation,
      Function functionForResultSuccess,
      Function(String) functionForResultError
      ) async
  {
    _beforeCodeIsCheckTypeNamelyEnum(
        baseViewModel,
        operation
    );
    String response = await FunctionViewModel
        .insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(
        modelLocalDatabaseForOneEntryFVM
    );
    _afterCodeIsCheckResponseAndNotifyStreamModelDomain(
        response,
        baseViewModel,
        operation,
        functionForResultSuccess,
        functionForResultError
    );
  }

  static Future<void> setModelDomainAndInsertModelToLocalDatabaseForOneEntryThereIsParameterFVM(
      ModelLocalDatabaseForOneEntryFVM modelLocalDatabaseForOneEntryFVM,
      BaseViewModel baseViewModel,
      BaseModelDomain baseModelDomain,
      Enum operation,
      Function functionForResultSuccess,
      Function(String) functionForResultError
      ) async
  {
    _beforeCodeIsCheckTypeNamelyEnumAndBaseModelDomainAndAlsoUsedFunctionSetModelDomain(
        baseViewModel,
        baseModelDomain,
        operation
    );
    String response = await FunctionViewModel
        .insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(
        modelLocalDatabaseForOneEntryFVM
    );
    _afterCodeIsCheckResponse(
        response,
        functionForResultSuccess,
        functionForResultError
    );
  }

  static Future<void> setModelDomainAndInsertModelToLocalDatabaseForOneEntryThereIsParameterFVMAndNotifyStreamModelDomain(
      ModelLocalDatabaseForOneEntryFVM modelLocalDatabaseForOneEntryFVM,
      BaseViewModel baseViewModel,
      BaseModelDomain baseModelDomain,
      Enum operation,
      Function functionForResultSuccess,
      Function(String) functionForResultError
      ) async
  {
    _beforeCodeIsCheckTypeNamelyEnumAndBaseModelDomainAndAlsoUsedFunctionSetModelDomain(
        baseViewModel,
        baseModelDomain,
        operation
    );
    String response = await FunctionViewModel
        .insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(
        modelLocalDatabaseForOneEntryFVM
    );
    _afterCodeIsCheckResponseAndNotifyStreamModelDomain(
        response,
        baseViewModel,
        operation,
        functionForResultSuccess,
        functionForResultError
    );
  }

  /* End Method InsertModelToLocalDatabaseForOneEntryThereIsParameterFVM */

  @protected
  void beforeCodeIsCheckTypeNamelyEnum(
      BaseViewModel baseViewModel,
      Enum operation,
      )
  {
    if(baseViewModel.getTypeEnum != operation.runtimeType)
    {
      throw Exception("no type enum: ${baseViewModel.runtimeType}");
    }
  }

  @protected
  void beforeCodeIsCheckTypeNamelyEnumAndBaseModelDomainAndAlsoUsedFunctionSetModelDomain(
      BaseViewModel baseViewModel,
      BaseModelDomain baseModelDomain,
      Enum operation,
     )
  {
    if(baseViewModel.getTypeEnum != operation.runtimeType ||
        baseViewModel.getTypeBaseModelDomain != baseModelDomain.runtimeType)
    {
      throw Exception("no type enum or no type baseModelDomain: ${baseViewModel.runtimeType}");
    }

    baseViewModel.setModelDomain(
        baseModelDomain,
        operation
    );
  }

  @protected
  void afterCodeIsCheckResponse(
      String response,
      Function functionForResultSuccess,
      Function(String) functionForResultError)
  {
    if(response == CONST_SUCCESS) {
      functionForResultSuccess();
    } else {
      functionForResultError(response);
    }
  }

  @protected
  void afterCodeIsCheckResponseAndNotifyStreamModelDomain(
      String response,
      BaseViewModel baseViewModel,
      Enum operation,
      Function functionForResultSuccess,
      Function(String) functionForResultError)
  {
    if(response == CONST_SUCCESS) {
      baseViewModel.notifyStreamModelDomain(operation);
      functionForResultSuccess();
    } else {
      functionForResultError(response);
    }
  }

  @protected
  void afterCodeIsCheckResponseAndNotifyStreamListModelDomainLocalDatabase(
      String response,
      BaseViewModel baseViewModel,
      Function functionForResultSuccess,
      Function(String) functionForResultError)
  {
    if(response == CONST_SUCCESS) {
      baseViewModel.notifyStreamListModelDomain();
      functionForResultSuccess();
    } else {
      functionForResultError(response);
    }
  }

  @protected
  void afterCodeIsCheckResponseAndNotifyStreamListModelDomainNetworkDatabase(
      String response,
      BaseViewModel baseViewModel,
      Function functionForResultSuccess,
      Function(String) functionForResultError)
  {
    if(response == CONST_SUCCESS) {
      baseViewModel.notifyStreamListModelDomainFromNetworkDatabase();
      functionForResultSuccess();
    } else {
      functionForResultError(response);
    }
  }

}
