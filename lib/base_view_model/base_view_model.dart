import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/model_local_database_for_one_entry_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/model_notification_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_type_parameter_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_type_parameter_vm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_iterator_for_base_list_model_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_model_local_database_for_one_entry_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_model_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_model_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_model_notification_fvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/cancel_notification_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/cancel_notification_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_model_to_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_model_to_ln_database_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_model_to_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_model_to_local_database_for_one_entry_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_model_to_local_database_for_one_entry_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_list_model_from_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_list_model_from_ln_database_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_list_model_from_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_list_model_from_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_model_from_ln_database_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_model_from_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_model_from_local_database_for_one_entry_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_model_from_local_database_for_one_entry_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_model_to_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_model_to_ln_database_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_model_to_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_model_to_local_database_for_one_entry_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_model_to_local_database_for_one_entry_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/push_notification_to_show_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/push_notification_to_show_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/push_notification_to_zoned_schedule_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/push_notification_to_zoned_schedule_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_model_to_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_model_to_ln_database_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_model_to_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends BaseModelDomain,
                              Y extends BaseListModelDomain<T>>
{
  /* Constructor */
  final List<EnumBaseModelDomainVM> _listEnumBaseModelDomainVM;
  final List<EnumBaseListModelDomainVM> _listEnumBaseListModelDomainVM;
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* Types */
  final Type _typeBaseModelDomain = T;

  /* Maps */
  final Map<EnumBaseTypeParameterVM,BaseTypeParameter> _mapEnumBaseTypeParameterVMAndBaseTypeParameter = {
    EnumBaseTypeParameterVM.getListModelFromLocalDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterVM.getListModelFromNetworkDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterVM.getModelFromLocalDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterVM.getModelFromNetworkDatabaseThereIsParameter : BoolTypeParameter(false),
  };
  final Map<EnumTypeParameterVM,EnumTypeParameter> _mapEnumTypeParameterVMAndEnumTypeParameter = {
    EnumTypeParameterVM.getListModelFromLocalDatabaseThereIsParameter : EnumTypeParameter(
        EnumTypeParameterVM.getListModelFromLocalDatabaseThereIsParameter
    ),
    EnumTypeParameterVM.getListModelFromNetworkDatabaseThereIsParameter : EnumTypeParameter(
        EnumTypeParameterVM.getListModelFromNetworkDatabaseThereIsParameter
    ),
  };
  Map<EnumBaseModelDomainVM,T> _mapEnumBaseModelDomainVMAndBaseModelDomain;
  Map<EnumBaseModelDomainVM,StreamController<T>> _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
  Map<EnumBaseListModelDomainVM,Y> _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _mapEnumBaseListModelDomainVMAndStreamControllerForList;

  /* Maps For Iterator */
  Map<Enum,BaseIterator> _mapEnumAndBaseIterator = {};

  BaseViewModel(
      this._listEnumBaseModelDomainVM,
      this._listEnumBaseListModelDomainVM,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain
      );

  BaseViewModel.forIterator(
      this._listEnumBaseModelDomainVM,
      this._listEnumBaseListModelDomainVM,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      this._mapEnumAndBaseIterator
      );

  void dispose() {
    _disposeForAnyMap(_mapEnumBaseModelDomainVMAndBaseModelDomain);
    _disposeForAnyMap(_mapEnumBaseListModelDomainVMAndBaseListModelDomain);
    _disposeForAnyMap(_mapEnumAndBaseIterator);
    _disposeForMapEnumAndStreamController(_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain);
    _disposeForMapEnumAndStreamController(_mapEnumBaseListModelDomainVMAndStreamControllerForList);
  }
  
  Type get getTypeBaseModelDomain {
    return _typeBaseModelDomain;
  }
  
  /* Start Methods From ReadyClassesFVM */

  /// Start ReadyModelLocalDatabaseForOneEntryFVM
  ///
  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM(ModelLocalDatabaseForOneEntryDataSource modelLocalDatabaseForOneEntryDataSource) {
    return ReadyModelLocalDatabaseForOneEntryFVM.callToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM(this, modelLocalDatabaseForOneEntryDataSource);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVMVariantTwo(
      ModelLocalDatabaseForOneEntryDataSource modelLocalDatabaseForOneEntryDataSource,
      GetModelFromLocalDatabaseForOneEntryCBFVM getModelFromLocalDatabaseForOneEntryCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = getModelFromLocalDatabaseForOneEntryCBFVM.callToMethodGetModelFromLocalDatabaseForOneEntryCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseForOneEntryFVM.callToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM(this, modelLocalDatabaseForOneEntryDataSource);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVMVariantThree(
      ModelLocalDatabaseForOneEntryDataSource modelLocalDatabaseForOneEntryDataSource,
      GetModelFromLocalDatabaseForOneEntryUsedProviderBaseModelDomainCBFVM getModelFromLocalDatabaseForOneEntryCBFVM) async
  {
    getModelFromLocalDatabaseForOneEntryCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getModelFromLocalDatabaseForOneEntry
    ];
    ResponseGenericBoolAndDomainException response = getModelFromLocalDatabaseForOneEntryCBFVM.callToMethodGetModelFromLocalDatabaseForOneEntryCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseForOneEntryFVM.callToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM(this, modelLocalDatabaseForOneEntryDataSource);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseForOneEntryThereIsParameterFVM(ModelLocalDatabaseForOneEntryDataSource modelLocalDatabaseForOneEntryDataSource) {
    return ReadyModelLocalDatabaseForOneEntryFVM.insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(this, modelLocalDatabaseForOneEntryDataSource);
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseForOneEntryThereIsParameterFVMVariantTwo(
      ModelLocalDatabaseForOneEntryDataSource modelLocalDatabaseForOneEntryDataSource,
      InsertModelToLocalDatabaseForOneEntryThereIsParameterCBFVM insertModelToLocalDatabaseForOneEntryThereIsParameterCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = insertModelToLocalDatabaseForOneEntryThereIsParameterCBFVM.insertModelToLocalDatabaseForOneEntryThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseForOneEntryFVM.insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(
          this, modelLocalDatabaseForOneEntryDataSource);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseForOneEntryThereIsParameterFVMVariantThree(
      ModelLocalDatabaseForOneEntryDataSource modelLocalDatabaseForOneEntryDataSource,
      InsertModelToLocalDatabaseForOneEntryThereIsParameterUsedProviderBaseModelDomainCBFVM<T> insertModelToLocalDatabaseForOneEntryThereIsParameterCBFVM) async
  {
    insertModelToLocalDatabaseForOneEntryThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.insertModelToLocalDatabaseForOneEntryThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = insertModelToLocalDatabaseForOneEntryThereIsParameterCBFVM.insertModelToLocalDatabaseForOneEntryThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseForOneEntryFVM.insertModelToLocalDatabaseForOneEntryThereIsParameterFVMVariantTwo(
          insertModelToLocalDatabaseForOneEntryThereIsParameterCBFVM.getBaseModel, modelLocalDatabaseForOneEntryDataSource);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseForOneEntryFVM(ModelLocalDatabaseForOneEntryDataSource modelLocalDatabaseForOneEntryDataSource) {
    return ReadyModelLocalDatabaseForOneEntryFVM.deleteModelToLocalDatabaseForOneEntryFVM(modelLocalDatabaseForOneEntryDataSource);
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseForOneEntryFVMVariantTwo(
      ModelLocalDatabaseForOneEntryDataSource modelLocalDatabaseForOneEntryDataSource,
      DeleteModelToLocalDatabaseForOneEntryCBFVM deleteModelToLocalDatabaseForOneEntryCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = deleteModelToLocalDatabaseForOneEntryCBFVM.deleteModelToLocalDatabaseForOneEntryCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseForOneEntryFVM.deleteModelToLocalDatabaseForOneEntryFVM(modelLocalDatabaseForOneEntryDataSource);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseForOneEntryFVMVariantThree(
      ModelLocalDatabaseForOneEntryDataSource modelLocalDatabaseForOneEntryDataSource,
      DeleteModelToLocalDatabaseForOneEntryUseProviderBaseModelDomainCBFVM deleteModelToLocalDatabaseForOneEntryCBFVM) async
  {
    deleteModelToLocalDatabaseForOneEntryCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.deleteModelToLocalDatabaseForOneEntry
    ];
    ResponseGenericBoolAndDomainException response = deleteModelToLocalDatabaseForOneEntryCBFVM.deleteModelToLocalDatabaseForOneEntryCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseForOneEntryFVM.deleteModelToLocalDatabaseForOneEntryFVM(modelLocalDatabaseForOneEntryDataSource);
    } else {
      return Response.exception(response.getException);
    }
  }

  /// End ReadyModelLocalDatabaseForOneEntryFVM

  /// Start ReadyIteratorForBaseListModelLNDatabaseFVM
  ///
  @protected
  Response<bool,BaseException> baseCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM() {
    return ReadyIteratorForBaseListModelLNDatabaseFVM.callToMethodSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIteratorFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumTypeParameterVMAndEnumTypeParameter[EnumTypeParameterVM.getListModelFromLocalDatabaseThereIsParameter],
        _mapEnumAndBaseIterator);
  }

  @protected
  Response<bool,BaseException> baseCallToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM() {
    return ReadyIteratorForBaseListModelLNDatabaseFVM.callToMethodSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIteratorFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumTypeParameterVMAndEnumTypeParameter[EnumTypeParameterVM.getListModelFromNetworkDatabaseThereIsParameter],
        _mapEnumAndBaseIterator);
  }

  /// End ReadyIteratorForBaseListModelLNDatabaseFVM

  /// Start ReadyModelLocalDatabaseFVM
  ///
  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource) {
    return ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
        getListModelFromLocalDatabaseDataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVMVariantTwo(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource,
      GetListModelFromLNDatabaseCBFVM getListModelFromLNDatabaseCBFVM) async 
  {
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
          getListModelFromLocalDatabaseDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVMVariantThree(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource,
      GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM getListModelFromLNDatabaseCBFVM) async
  {
    getListModelFromLNDatabaseCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
          getListModelFromLocalDatabaseDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource) {
    return ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromLocalDatabaseThereIsParameterDataSource, 
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getListModelFromLocalDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantTwo(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseThereIsParameterCBFVM getListModelFromLNDatabaseThereIsParameterCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseThereIsParameterCBFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromLocalDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getListModelFromLocalDatabaseThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM getListModelFromLNDatabaseThereIsParameterCBFVM) async
  {
    getListModelFromLNDatabaseThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseThereIsParameterCBFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromLocalDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getListModelFromLocalDatabaseThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource)
  {
    return ReadyModelLocalDatabaseFVM.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        this,
        getModelFromLocalDatabaseThereIsParameterDataSource,
        _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getModelFromLocalDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantTwo(
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseThereIsParameterCBFVM getModelFromLNDatabaseThereIsParameterCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = getModelFromLNDatabaseThereIsParameterCBFVM.callToMethodGetModelFromLNDatabaseThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM
          .callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          this,
          getModelFromLocalDatabaseThereIsParameterDataSource,
          _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getModelFromLocalDatabaseThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM getModelFromLNDatabaseThereIsParameterCBFVM) async
  {
    getModelFromLNDatabaseThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = getModelFromLNDatabaseThereIsParameterCBFVM.callToMethodGetModelFromLNDatabaseThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM
          .callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          this,
          getModelFromLocalDatabaseThereIsParameterDataSource,
          _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getModelFromLocalDatabaseThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVM(InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource) {
    return ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVM(
        this,
        insertModelToLocalDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseCBFVM insertModelToLNDatabaseCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVM(
          this,
          insertModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantThree(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseThereIsParameterCBFVM insertModelToLNDatabaseThereIsParameterCBFVM) async
  {
    var response = insertModelToLNDatabaseThereIsParameterCBFVM.insertModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM
          .insertModelToLocalDatabaseThereIsParameterFVM(
          this,
          insertModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantFour(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseCBFVM) async
  {
    insertModelToLNDatabaseCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          insertModelToLNDatabaseCBFVM.getBaseModel,
          insertModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantFive(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseThereIsParameterCBFVM) async
  {
    insertModelToLNDatabaseThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseThereIsParameterCBFVM.insertModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter].getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          insertModelToLNDatabaseThereIsParameterCBFVM.getBaseModel,
          insertModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVM(UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource) {
    return ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVM(
        this,
        updateModelToLocalDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseCBFVM updateModelToLNDatabaseCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseCBFVM.updateModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVM(
          this,
          updateModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantThree(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseThereIsParameterCBFVM updateModelToLNDatabaseThereIsParameterCBFVM) async
  {
    var response = updateModelToLNDatabaseThereIsParameterCBFVM.updateModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM
          .updateModelToLocalDatabaseThereIsParameterFVM(
          this,
          updateModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantFour(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseCBFVM)  async
  {
    updateModelToLNDatabaseCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
    EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseCBFVM.updateModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          updateModelToLNDatabaseCBFVM.getBaseModel,
          updateModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantFive(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseThereIsParameterCBFVM)  async
  {
    updateModelToLNDatabaseThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseThereIsParameterCBFVM.updateModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
          .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          updateModelToLNDatabaseThereIsParameterCBFVM.getBaseModel,
          updateModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVM(DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource) {
    return ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVM(
        this,
        deleteModelToLocalDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseCBFVM deleteModelToLNDatabaseCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseCBFVM.deleteModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVM(
          this,
          deleteModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantThree(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseThereIsParameterCBFVM deleteModelToLNDatabaseThereIsParameterCBFVM) async
  {
    var response = deleteModelToLNDatabaseThereIsParameterCBFVM.deleteModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM
          .deleteModelToLocalDatabaseThereIsParameterFVM(
          this,
          deleteModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantFour(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseCBFVM) async
  {
    deleteModelToLNDatabaseCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
    EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseCBFVM.deleteModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM
          .deleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          deleteModelToLNDatabaseCBFVM.getBaseModel,
          deleteModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantFive(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseThereIsParameterCBFVM) async
  {
    deleteModelToLNDatabaseThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseThereIsParameterCBFVM.deleteModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelLocalDatabaseFVM
          .deleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          deleteModelToLNDatabaseThereIsParameterCBFVM.getBaseModel,
          deleteModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  /// End ReadyModelLocalDatabaseFVM

  /// Start ReadyModelNetworkDatabaseFVM
  ///
  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource)
  {
    return ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
        getListModelFromNetworkDatabaseDataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVMVariantTwo(
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource,
      GetListModelFromLNDatabaseCBFVM getListModelFromLNDatabaseCBFVM) async
  {
    ResponseGenericBoolAndDomainException responseGenericBoolAndDomainException = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(responseGenericBoolAndDomainException.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]);
    } else {
      return Response.exception(responseGenericBoolAndDomainException.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVMVariantThree(
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource,
      GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM getListModelFromLNDatabaseCBFVM) async
  {
    getListModelFromLNDatabaseCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
    ];
    ResponseGenericBoolAndDomainException responseGenericBoolAndDomainException = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(responseGenericBoolAndDomainException.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]);
    } else {
      return Response.exception(responseGenericBoolAndDomainException.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource) 
  {
    return ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromNetworkDatabaseThereIsParameterDataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getListModelFromNetworkDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantTwo(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseThereIsParameterCBFVM getListModelFromLNDatabaseThereIsParameterCBFVM) async
  {
    ResponseGenericBoolAndDomainException responseGenericBoolAndDomainException = getListModelFromLNDatabaseThereIsParameterCBFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterCBFVM();
    if(responseGenericBoolAndDomainException.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getListModelFromNetworkDatabaseThereIsParameter]);
    } else {
      return Response.exception(responseGenericBoolAndDomainException.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM getListModelFromLNDatabaseThereIsParameterCBFVM) async
  {
    getListModelFromLNDatabaseThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
    ];
    ResponseGenericBoolAndDomainException responseGenericBoolAndDomainException = getListModelFromLNDatabaseThereIsParameterCBFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterCBFVM();
    if(responseGenericBoolAndDomainException.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getListModelFromNetworkDatabaseThereIsParameter]);
    } else {
      return Response.exception(responseGenericBoolAndDomainException.getException);
    }
  }
  
  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource)
  {
    return ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        this,
        getModelFromNetworkDatabaseThereIsParameterDataSource,
        _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getModelFromNetworkDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantTwo(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseThereIsParameterCBFVM getModelFromLNDatabaseThereIsParameterCBFVM) async
  {
    ResponseGenericBoolAndDomainException responseGenericBoolAndDomainException = getModelFromLNDatabaseThereIsParameterCBFVM.callToMethodGetModelFromLNDatabaseThereIsParameterCBFVM();
    if(responseGenericBoolAndDomainException.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          this,
          getModelFromNetworkDatabaseThereIsParameterDataSource,
          _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getModelFromNetworkDatabaseThereIsParameter]);
    } else {
      return Response.exception(responseGenericBoolAndDomainException.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM getModelFromLNDatabaseThereIsParameterCBFVM) async
  {
    getModelFromLNDatabaseThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException responseGenericBoolAndDomainException = getModelFromLNDatabaseThereIsParameterCBFVM.callToMethodGetModelFromLNDatabaseThereIsParameterCBFVM();
    if(responseGenericBoolAndDomainException.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          this,
          getModelFromNetworkDatabaseThereIsParameterDataSource,
          _mapEnumBaseTypeParameterVMAndBaseTypeParameter[EnumBaseTypeParameterVM.getModelFromNetworkDatabaseThereIsParameter]);
    } else {
      return Response.exception(responseGenericBoolAndDomainException.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVM(InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource) {
    return ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVM(
        this,
        insertModelToNetworkDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseCBFVM insertModelToLNDatabaseCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVM(
          this,
          insertModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseThereIsParameterCBFVM insertModelToLNDatabaseThereIsParameterCBFVM) async
  {
    var response = insertModelToLNDatabaseThereIsParameterCBFVM.insertModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM
          .insertModelToNetworkDatabaseThereIsParameterFVM(
          this,
          insertModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseCBFVM) async
  {
    insertModelToLNDatabaseCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
    EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter
    ];
    var response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM
          .insertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          insertModelToLNDatabaseCBFVM.getBaseModel,
          insertModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantFive(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseThereIsParameterCBFVM) async
  {
    insertModelToLNDatabaseThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter
    ];
    var response = insertModelToLNDatabaseThereIsParameterCBFVM.insertModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM
          .insertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          insertModelToLNDatabaseThereIsParameterCBFVM.getBaseModel,
          insertModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVM(UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource) {
    return ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVM(
        this,
        updateModelToNetworkDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseCBFVM updateModelToLNDatabaseCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseCBFVM.updateModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVM(
          this,
          updateModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseThereIsParameterCBFVM updateModelToLNDatabaseThereIsParameterCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseThereIsParameterCBFVM.updateModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVM(
          this,
          updateModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseCBFVM) async
  {
    updateModelToLNDatabaseCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
    EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseCBFVM.updateModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          updateModelToLNDatabaseCBFVM.getBaseModel,
          updateModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantFive(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseThereIsParameterCBFVM) async
  {
    updateModelToLNDatabaseThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseThereIsParameterCBFVM.updateModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
          .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          updateModelToLNDatabaseThereIsParameterCBFVM.getBaseModel,
          updateModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVM(DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource) {
    return ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVM(
        this,
        deleteModelToNetworkDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseCBFVM deleteModelToLNDatabaseCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseCBFVM.deleteModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM
          .deleteModelToNetworkDatabaseThereIsParameterFVM(
          this,
          deleteModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseThereIsParameterCBFVM deleteModelToLNDatabaseThereIsParameterCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseThereIsParameterCBFVM.deleteModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM
          .deleteModelToNetworkDatabaseThereIsParameterFVM(
          this,
          deleteModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseCBFVM) async
  {
    deleteModelToLNDatabaseCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
    EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseCBFVM.deleteModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM
          .deleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          deleteModelToLNDatabaseCBFVM.getBaseModel,
          deleteModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantFive(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseThereIsParameterCBFVM) async
  {
    deleteModelToLNDatabaseThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseThereIsParameterCBFVM.deleteModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return ReadyModelNetworkDatabaseFVM
          .deleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          deleteModelToLNDatabaseThereIsParameterCBFVM.getBaseModel,
          deleteModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  /// End ReadyModelNetworkDatabaseFVM

  /// Start ReadyModelDomainNotificationFVM
  ///
  Future<Response<bool,BaseException>> basePushNotificationToZonedScheduleThereIsParameterFVM(ModelNotificationDataSource notificationModelDataSource) {
    return ReadyModelNotificationFVM.pushNotificationToZonedScheduleThereIsParameterFVM(this, notificationModelDataSource);
  }

  Future<Response<bool,BaseException>> basePushNotificationToZonedScheduleThereIsParameterFVMVariantTwo(
      ModelNotificationDataSource notificationModelDataSource,
      PushNotificationToZonedScheduleThereIsParameterCBFVM pushNotificationToZonedScheduleThereIsParameterCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = pushNotificationToZonedScheduleThereIsParameterCBFVM.pushNotificationToZonedScheduleThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNotificationFVM.pushNotificationToZonedScheduleThereIsParameterFVM(
          this, notificationModelDataSource);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<bool,BaseException>> basePushNotificationToZonedScheduleThereIsParameterFVMVariantThree(
      ModelNotificationDataSource notificationModelDataSource,
      PushNotificationToZonedScheduleThereIsParameterUsedProviderBaseModelDomainCBFVM<T> pushNotificationToZonedScheduleThereIsParameterCBFVM) async
  {
    pushNotificationToZonedScheduleThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.pushNotificationToZonedScheduleThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = pushNotificationToZonedScheduleThereIsParameterCBFVM.pushNotificationToZonedScheduleThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNotificationFVM.pushNotificationToZonedScheduleThereIsParameterFVMVariantTwo(
          pushNotificationToZonedScheduleThereIsParameterCBFVM.getBaseModel, 
          notificationModelDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<bool,BaseException>> basePushNotificationToShowThereIsParameterFVM(ModelNotificationDataSource notificationModelDataSource) {
    return ReadyModelNotificationFVM.pushNotificationToShowThereIsParameterFVM(this, notificationModelDataSource);
  }

  Future<Response<bool,BaseException>> basePushNotificationToShowThereIsParameterFVMVariantTwo(
      ModelNotificationDataSource notificationModelDataSource,
      PushNotificationToShowThereIsParameterCBFVM pushNotificationToShowThereIsParameterCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = pushNotificationToShowThereIsParameterCBFVM.pushNotificationToShowThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNotificationFVM.pushNotificationToShowThereIsParameterFVM(this, notificationModelDataSource);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<bool,BaseException>> basePushNotificationToShowThereIsParameterFVMVariantThree(
      ModelNotificationDataSource notificationModelDataSource,
      PushNotificationToShowThereIsParameterUsedProviderBaseModelDomainCBFVM<T> pushNotificationToShowThereIsParameterCBFVM) async
  {
    pushNotificationToShowThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.pushNotificationToShowThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = pushNotificationToShowThereIsParameterCBFVM.pushNotificationToShowThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNotificationFVM.pushNotificationToShowThereIsParameterFVMVariantTwo(
          pushNotificationToShowThereIsParameterCBFVM.getBaseModel,
          notificationModelDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<bool,BaseException>> baseCancelNotificationThereIsParameterFVM(ModelNotificationDataSource notificationModelDataSource) {
    return ReadyModelNotificationFVM.cancelNotificationThereIsParameterFVM(this, notificationModelDataSource);
  }

  Future<Response<bool,BaseException>> baseCancelNotificationThereIsParameterFVMVariantTwo(
      ModelNotificationDataSource notificationModelDataSource,
      CancelNotificationThereIsParameterCBFVM cancelNotificationThereIsParameterCBFVM) async
  {
    ResponseGenericBoolAndDomainException response = cancelNotificationThereIsParameterCBFVM.cancelNotificationThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNotificationFVM.cancelNotificationThereIsParameterFVM(this, notificationModelDataSource);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<bool,BaseException>> baseCancelNotificationThereIsParameterFVMVariantThree(
      ModelNotificationDataSource notificationModelDataSource,
      CancelNotificationThereIsParameterUsedProviderBaseModelDomainCBFVM<T> cancelNotificationThereIsParameterCBFVM) async
  {
    cancelNotificationThereIsParameterCBFVM.setBaseModel = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.cancelNotificationThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = cancelNotificationThereIsParameterCBFVM.cancelNotificationThereIsParameterCBFVM();
    if(response.isSuccessResponse) {
      return ReadyModelNotificationFVM.cancelNotificationThereIsParameterFVMVariantTwo(
          cancelNotificationThereIsParameterCBFVM.getBaseModel,
          notificationModelDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }
  /// End ReadyModelDomainNotificationFVM

  /// Start ReadyListModelDomainForLNDatabaseFVM
  ///
  Response<bool, BaseException> baseInsertModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.insertModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<bool, BaseException> baseUpdateModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.updateModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<bool, BaseException> baseDeleteModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.deleteModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<bool, BaseException> baseInsertModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.insertModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<bool, BaseException> baseUpdateModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.updateModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<bool, BaseException> baseDeleteModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.deleteModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  /// End ReadyListModelDomainForLNDatabaseFVM

  /* End Methods From ReadyClassesFVM */
  
  /* Start Methods Base/EnumTypeParameter */

  void setBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(
      BaseTypeParameter baseTypeParameter,
      EnumBaseTypeParameterVM operation)
  {
    _mapEnumBaseTypeParameterVMAndBaseTypeParameter[operation] = baseTypeParameter;
  }

  void setEnumTypeParameterForGetListLNDatabase(
      EnumTypeParameter enumTypeParameter,
      EnumTypeParameterVM operation)
  {
    _mapEnumTypeParameterVMAndEnumTypeParameter[operation] = enumTypeParameter;
  }

  @protected
  BaseTypeParameter getBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(
      EnumBaseTypeParameterVM operation)
  {
    return _mapEnumBaseTypeParameterVMAndBaseTypeParameter[operation];
  }

  @protected
  EnumTypeParameter getEnumTypeParameterForGetListLNDatabase(EnumTypeParameterVM operation) {
    return _mapEnumTypeParameterVMAndEnumTypeParameter[operation];
  }

  /* End Methods Base/EnumTypeParameter */

  /* Start Methods Model */

  T getModel(EnumBaseModelDomainVM operation) {
    return _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  void setModel(T newModel,EnumBaseModelDomainVM operation) {
    _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation] = newModel;
  }

  Future<T> getFutureModel(EnumBaseModelDomainVM operation) async {
    return _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  Stream<T> getStreamModel(EnumBaseModelDomainVM operation) {
    return _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation].stream;
  }
  
  void notifyStreamModel(EnumBaseModelDomainVM operation) {
    _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation].add(
        _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation]
    );
  }
  /* End Methods Model */
  
  /* Start Methods ListModel */

  List<T> getListModel(EnumBaseListModelDomainVM operation)  {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }

  void setListModel(List<T> newModel,EnumBaseListModelDomainVM operation) {
    _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].setListModelDomain = newModel;
  }

  Future<List<T>> getFutureListModel(EnumBaseListModelDomainVM operation) async {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }
  
  Stream<List<T>> getStreamListModel(EnumBaseListModelDomainVM operation) {
    return _getMapEnumBaseListModelDomainVMAndStreamControllerForList[operation].stream;
  }

  void notifyStreamListModel(EnumBaseListModelDomainVM operation) {
    _getMapEnumBaseListModelDomainVMAndStreamControllerForList[operation].add(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain
    );
  }

  @protected
  Y getBaseListModelDomain(EnumBaseListModelDomainVM operation) {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation];
  }

  /* End Methods ListModel */
  
  Map<EnumBaseModelDomainVM,T> get _getMapEnumBaseModelDomainVMAndBaseModelDomain {
    if(_mapEnumBaseModelDomainVMAndBaseModelDomain != null) {
      return _mapEnumBaseModelDomainVMAndBaseModelDomain;
    }
    _mapEnumBaseModelDomainVMAndBaseModelDomain = _creationAndGetMapEnumBaseModelDomainVMAndBaseModelDomain();
    return _mapEnumBaseModelDomainVMAndBaseModelDomain;
  }

  Map<EnumBaseModelDomainVM,StreamController<T>> get _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain {
    if(_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain != null) {
      return _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
    }
    _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain = _creationAndGetMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain();
    return _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
  }

  Map<EnumBaseListModelDomainVM,Y> get _getMapEnumBaseListModelDomainVMAndBaseListModelDomain {
    if(_mapEnumBaseListModelDomainVMAndBaseListModelDomain != null) {
      return _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
    }
    _mapEnumBaseListModelDomainVMAndBaseListModelDomain = _creationAndGetMapEnumBaseListModelDomainVMAndBaseListModelDomain();
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
  }

  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> get _getMapEnumBaseListModelDomainVMAndStreamControllerForList {
    if(_mapEnumBaseListModelDomainVMAndStreamControllerForList != null) {
      return _mapEnumBaseListModelDomainVMAndStreamControllerForList;
    }
    _mapEnumBaseListModelDomainVMAndStreamControllerForList = _creationAndGetMapEnumBaseListModelDomainVMAndStreamControllerForList();
    return _mapEnumBaseListModelDomainVMAndStreamControllerForList;
  }

  Map<EnumBaseModelDomainVM,T> _creationAndGetMapEnumBaseModelDomainVMAndBaseModelDomain() {
    _checkListToIsEmptyAndInsertEnumBaseModelDomainVMIfListEmpty(_listEnumBaseModelDomainVM);

    Map<EnumBaseModelDomainVM,T> map = {};
    for(EnumBaseModelDomainVM viewModelOperation in _listEnumBaseModelDomainVM) {
      map[viewModelOperation] = _initCreatorBaseModelDomain();
    }
    return map;
  }

  Map<EnumBaseModelDomainVM,StreamController<T>> _creationAndGetMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain() {
    _checkListToIsEmptyAndInsertEnumBaseModelDomainVMIfListEmpty(_listEnumBaseModelDomainVM);

    Map<EnumBaseModelDomainVM,StreamController<T>> map = {};
    for(EnumBaseModelDomainVM viewModelOperation in _listEnumBaseModelDomainVM) {
      map[viewModelOperation] = StreamController<T>.broadcast();
    }
    return map;
  }
  
  Map<EnumBaseListModelDomainVM,Y> _creationAndGetMapEnumBaseListModelDomainVMAndBaseListModelDomain() {
    _checkListToIsEmptyAndInsertEnumBaseListModelDomainVMIfListEmpty(_listEnumBaseListModelDomainVM);

    Map<EnumBaseListModelDomainVM,Y> map = {};
    for(EnumBaseListModelDomainVM viewModelOperation in _listEnumBaseListModelDomainVM) {
      map[viewModelOperation] = _initCreatorBaseListModelDomain();
    }
    return map;
  }

  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _creationAndGetMapEnumBaseListModelDomainVMAndStreamControllerForList() {
    _checkListToIsEmptyAndInsertEnumBaseListModelDomainVMIfListEmpty(_listEnumBaseListModelDomainVM);

    Map<EnumBaseListModelDomainVM,StreamController<List<T>>> map = {};
    for(EnumBaseListModelDomainVM viewModelOperation in _listEnumBaseListModelDomainVM) {
      map[viewModelOperation] = StreamController<List<T>>.broadcast();
    }
    return map;
  }

  void _checkListToIsEmptyAndInsertEnumBaseModelDomainVMIfListEmpty(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM)
  {
    if(listEnumBaseModelDomainVM.isEmpty) {
      for(EnumBaseModelDomainVM enumBaseListModelDomainVM in EnumBaseModelDomainVM.values) {
        listEnumBaseModelDomainVM.add(enumBaseListModelDomainVM);
      }
    }
  }

  void _checkListToIsEmptyAndInsertEnumBaseListModelDomainVMIfListEmpty(
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM)
  {
    if(listEnumBaseListModelDomainVM.isEmpty) {
      for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in EnumBaseListModelDomainVM.values) {
        listEnumBaseListModelDomainVM.add(enumBaseListModelDomainVM);
      }
    }
  }

  void _disposeForAnyMap(Map map) {
    if(map != null) {
      map = null;
    }
  }

  void _disposeForMapEnumAndStreamController(Map<Enum,StreamController> map) {
    if(map != null) {
      if(map.isEmpty) {
        map = null;
      } else {
        for (StreamController streamController in map.values) {
          if (streamController != null) {
            if (!streamController.isClosed) {
              streamController.close();
            }
            streamController = null;
          }
        }
        map = null;
      }
    }
  }

}