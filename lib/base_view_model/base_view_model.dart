import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_dispose.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_type_parameter_for_get_model_ln_database_and_get_list_ln_database_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_type_parameter_for_iterator_for_list_model_ln_database_vm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_iterator_for_base_list_model_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_model_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_model_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_list_model_to_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_list_model_to_ln_database_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_list_model_to_ln_database_used_provider_base_list_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_model_to_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_model_to_ln_database_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_model_to_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_list_model_from_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_list_model_from_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_model_from_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_model_from_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_list_model_to_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_list_model_to_ln_database_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_list_model_to_ln_database_used_provider_base_list_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_model_to_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_model_to_ln_database_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_model_to_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_list_model_to_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_list_model_to_ln_database_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_list_model_to_ln_database_used_provider_base_list_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_model_to_ln_database_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_model_to_ln_database_there_is_parameter_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_model_to_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_operation_with_model_data_after_function_view_model/delete_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_owmdafvm.dart';
import 'package:library_architecture_mvvm_modify/interface_operation_with_model_data_after_function_view_model/delete_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_owmdafvm.dart';
import 'package:library_architecture_mvvm_modify/interface_operation_with_model_data_after_function_view_model/get_list_model_from_ln_database_there_is_parameter_used_provider_base_model_domain_owmdafvm.dart';
import 'package:library_architecture_mvvm_modify/interface_operation_with_model_data_after_function_view_model/get_model_from_ln_database_there_is_parameter_used_provider_base_model_domain_owmdafvm.dart';
import 'package:library_architecture_mvvm_modify/interface_operation_with_model_data_after_function_view_model/insert_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_owmdafvm.dart';
import 'package:library_architecture_mvvm_modify/interface_operation_with_model_data_after_function_view_model/insert_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_owmdafvm.dart';
import 'package:library_architecture_mvvm_modify/interface_operation_with_model_data_after_function_view_model/update_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_owmdafvm.dart';
import 'package:library_architecture_mvvm_modify/interface_operation_with_model_data_after_function_view_model/update_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_owmdafvm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends BaseModelDomain, Y extends BaseListModelDomain<T>> implements BaseDispose
{
  /* Constructor */
  final List<EnumBaseModelDomainVM> _listEnumBaseModelDomainVM;
  final List<EnumBaseListModelDomainVM> _listEnumBaseListModelDomainVM;
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* Types */
  final Type _typeBaseModelDomain = T;

  /* Maps */
  final Map<EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM,BaseTypeParameter> _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase = {
    EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromLocalDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromNetworkDatabaseThereIsParameter : BoolTypeParameter(false),

    EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter : BoolTypeParameter(false),
  };

  Map<EnumBaseModelDomainVM,T> _mapEnumBaseModelDomainVMAndBaseModelDomain;
  Map<EnumBaseModelDomainVM,StreamController<T>> _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
  Map<EnumBaseListModelDomainVM,Y> _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _mapEnumBaseListModelDomainVMAndStreamControllerForList;

  /* Maps For Iterator */
  Map<Enum,BaseIterator> _mapEnumAndBaseIterator = {};
  Map<EnumTypeParameterForIteratorForListModelLNDatabaseVM,EnumTypeParameter> _mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter = {};

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
      this._mapEnumAndBaseIterator,
      this._mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter
      );

  @override
  void dispose() {
    _disposeForMapEnumAndStreamController(_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain);
    _disposeForMapEnumAndStreamController(_mapEnumBaseListModelDomainVMAndStreamControllerForList);
    _disposeForAnyMap(_mapEnumBaseModelDomainVMAndBaseModelDomain);
    _disposeForAnyMap(_mapEnumBaseListModelDomainVMAndBaseListModelDomain);
    _disposeForAnyMap(_mapEnumAndBaseIterator);
    _disposeForAnyMap(_mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter);
  }
  
  Type get getTypeBaseModelDomain {
    return _typeBaseModelDomain;
  }
  
  /// Start Methods From ReadyClassesFVM **/

  /// Start ReadyIteratorForBaseListModelLNDatabaseFVM
  ///
  @protected
  Response<bool,BaseException> baseCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM() 
  {
    return ReadyIteratorForBaseListModelLNDatabaseFVM.callToMethodSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIteratorFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter[EnumTypeParameterForIteratorForListModelLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter],
        _mapEnumAndBaseIterator);
  }

  @protected
  Response<bool,BaseException> baseCallToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM()
  {
    return ReadyIteratorForBaseListModelLNDatabaseFVM.callToMethodSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIteratorFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter[EnumTypeParameterForIteratorForListModelLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter],
        _mapEnumAndBaseIterator);
  }

  /// End ReadyIteratorForBaseListModelLNDatabaseFVM

  /// Start ReadyModelLocalDatabaseFVM
  ///
  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource) 
  {
    return ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
        getListModelFromLocalDatabaseDataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVMVariantTwo(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource,
      GetListModelFromLNDatabaseCBFVM getListModelFromLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
          getListModelFromLocalDatabaseDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVMVariantThree(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource,
      GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getListModelFromLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter].cloneObjectForCBFVM();
    getListModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;
    
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
          getListModelFromLocalDatabaseDataSource, 
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVMVariantFour(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource,
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getListModelFromLNDatabaseThereIsParameterOWMDAFVM)
  async {
    getListModelFromLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
    ];
    var response = await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
        getListModelFromLocalDatabaseDataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
    if(response.isSuccessResponse) {
      getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(response.getData);
    } else {
      getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVMVariantFive(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource,
      GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getListModelFromLNDatabaseCBFVM,
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getListModelFromLNDatabaseOWMDAFVM) 
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter].cloneObjectForCBFVM();
    getListModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;
    getListModelFromLNDatabaseOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
          getListModelFromLocalDatabaseDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
      );
      if(responseTwo.isSuccessResponse) {
        getListModelFromLNDatabaseOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        getListModelFromLNDatabaseOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      getListModelFromLNDatabaseOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource) 
  {
    return ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromLocalDatabaseThereIsParameterDataSource, 
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantTwo(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseCBFVM getListModelFromLNDatabaseCBFVM) 
  async {
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromLocalDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getListModelFromLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter].cloneObjectForCBFVM();
    getListModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;
    
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromLocalDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getListModelFromLNDatabaseThereIsParameterOWMDAFVM)
  async {
    getListModelFromLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
    ];
    var responseTwo = await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromLocalDatabaseThereIsParameterDataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter]
    );
    if(responseTwo.isSuccessResponse) {
      getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(responseTwo.getData);
    } else {
      getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(responseTwo.getException);
    }
  }
  
  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantFive(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getListModelFromLNDatabaseCBFVM,
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getListModelFromLNDatabaseThereIsParameterOWMDAFVM) 
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter].cloneObjectForCBFVM();
    getListModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;
   
    getListModelFromLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromLocalDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter]
      );
      if(responseTwo.isSuccessResponse) {
        getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
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
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromLocalDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantTwo(
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseCBFVM getModelFromLNDatabaseCBFVM) 
  async {
    ResponseGenericBoolAndDomainException response = getModelFromLNDatabaseCBFVM.callToMethodGetModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          this,
          getModelFromLocalDatabaseThereIsParameterDataSource,
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromLocalDatabaseThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getModelFromLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    getModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = getModelFromLNDatabaseCBFVM.callToMethodGetModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          this,
          getModelFromLocalDatabaseThereIsParameterDataSource,
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromLocalDatabaseThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getModelFromLNDatabaseThereIsParameterOWMDAFVM)
  async {
    getModelFromLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter
    ];
    var response = await ReadyModelLocalDatabaseFVM.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        this,
        getModelFromLocalDatabaseThereIsParameterDataSource,
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromLocalDatabaseThereIsParameter]
    );
    if(response.isSuccessResponse) {
      getModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(response.getData);
    } else {
      getModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantFive(
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getModelFromLNDatabaseCBFVM,
      GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getModelFromLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    getModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;
    getModelFromLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter
    ];
    
    ResponseGenericBoolAndDomainException response = getModelFromLNDatabaseCBFVM.callToMethodGetModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          this,
          getModelFromLocalDatabaseThereIsParameterDataSource,
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromLocalDatabaseThereIsParameter]
      );
      if(responseTwo.isSuccessResponse) {
        getModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        getModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      getModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVM(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource)
  {
    return ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVM(
        this,
        insertModelToLocalDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseCBFVM insertModelToLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVM(
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
      InsertModelToLNDatabaseThereIsParameterCBFVM insertModelToLNDatabaseThereIsParameterCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseThereIsParameterCBFVM.insertModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVM(
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
      InsertModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          insertModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantFive(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertModelToLNDatabaseThereIsParameterCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseThereIsParameterCBFVM.insertModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          insertModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantSix(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> insertModelToLNDatabaseOWMDAFVM)
  async {
    var responseTwo = await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
        _getMapEnumBaseModelDomainVMAndBaseModelDomain[
          EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter
        ],
        insertModelToLocalDatabaseThereIsParameterDataSource
    );
    if(responseTwo.isSuccessResponse) {
      insertModelToLNDatabaseOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(responseTwo.getData);
    } else {
      insertModelToLNDatabaseOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(responseTwo.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantSeven(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseCBFVM,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> insertModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;
    
    insertModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter
    ];
    var response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          insertModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        insertModelToLNDatabaseThereIsParameterOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        insertModelToLNDatabaseThereIsParameterOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      insertModelToLNDatabaseThereIsParameterOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantEight(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseCBFVM,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> insertModelToLNDatabaseOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    insertModelToLNDatabaseOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter
    ];
    var response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          insertModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        insertModelToLNDatabaseOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        insertModelToLNDatabaseOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      insertModelToLNDatabaseOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVM(
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource)
  {
    return ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter],
        insertListModelToLocalDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVMVariantTwo(
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseCBFVM insertModelToLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter],
          insertModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }
  
  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVMVariantThree(
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseThereIsParameterCBFVM insertListModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var response = insertListModelToLNDatabaseThereIsParameterCBFVM.insertListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter],
          insertListModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVMVariantFour(
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> insertListModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = insertListModelToLNDatabaseCBFVM.insertListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          insertListModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVMVariantFive(
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> insertListModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = insertListModelToLNDatabaseThereIsParameterCBFVM.insertListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          insertListModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVMVariantSix(
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> insertListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    insertListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter
    ];
    var response = await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter],
        insertListModelToLocalDatabaseThereIsParameterDataSource
    );
    if(response.isSuccessResponse) {
      insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(response.getData);
    } else {
      insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVMVariantSeven(
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> insertListModelToLNDatabaseCBFVM,
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> insertListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    insertListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = insertListModelToLNDatabaseCBFVM.insertListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          insertListModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVMVariantEight(
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> insertListModelToLNDatabaseThereIsParameterCBFVM,
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> insertListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    insertListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = insertListModelToLNDatabaseThereIsParameterCBFVM.insertListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          insertListModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVM(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource)
  {
    return ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVM(
        this,
        updateModelToLocalDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseCBFVM updateModelToLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseCBFVM.updateModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVM(
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
      UpdateModelToLNDatabaseThereIsParameterCBFVM updateModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var response = updateModelToLNDatabaseThereIsParameterCBFVM.updateModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVM(
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
      UpdateModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseCBFVM.updateModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          updateModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantFive(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateModelToLNDatabaseThereIsParameterCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseThereIsParameterCBFVM.updateModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          updateModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantSix(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> updateModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    updateModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter];

    var response = await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
        _getMapEnumBaseModelDomainVMAndBaseModelDomain[
          EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter
        ],
        updateModelToLocalDatabaseThereIsParameterDataSource
    );
    if(response.isSuccessResponse) {
      updateModelToLNDatabaseThereIsParameterOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(response.getData);
    } else {
      updateModelToLNDatabaseThereIsParameterOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantSeven(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseCBFVM,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> updateModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    updateModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter
    ];
    var response = updateModelToLNDatabaseCBFVM.updateModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          updateModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        updateModelToLNDatabaseThereIsParameterOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        updateModelToLNDatabaseThereIsParameterOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      updateModelToLNDatabaseThereIsParameterOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantEight(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseThereIsParameterCBFVM,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> updateModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateModelToLNDatabaseThereIsParameterCBFVM.setBaseModelDomainCBFVM = cbfvm;

    updateModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter
    ];

    var response = updateModelToLNDatabaseThereIsParameterCBFVM.updateModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          updateModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        updateModelToLNDatabaseThereIsParameterOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        updateModelToLNDatabaseThereIsParameterOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      updateModelToLNDatabaseThereIsParameterOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }
  
  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVM(
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource)
  {
    return ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter],
        updateListModelToLocalDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVMVariantTwo(
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseCBFVM updateListModelToLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = updateListModelToLNDatabaseCBFVM.updateListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter],
          updateListModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVMVariantThree(
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseThereIsParameterCBFVM updateListModelToLNDatabaseThereIsParameterCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = updateListModelToLNDatabaseThereIsParameterCBFVM.updateListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter],
          updateListModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVMVariantFour(
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> updateListModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = updateListModelToLNDatabaseCBFVM.updateListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          updateListModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVMVariantFive(
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> updateListModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = updateListModelToLNDatabaseThereIsParameterCBFVM.updateListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          updateListModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVMVariantSix(
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> updateListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    updateListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter],
        updateListModelToLocalDatabaseThereIsParameterDataSource
    );
    if(response.isSuccessResponse) {
      updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(response.getData);
    } else {
      updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVMVariantSeven(
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> updateListModelToLNDatabaseCBFVM,
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> updateListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    updateListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = updateListModelToLNDatabaseCBFVM.updateListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          updateListModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVMVariantEight(
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> updateListModelToLNDatabaseThereIsParameterCBFVM,
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> updateListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    updateListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter
    ];
    var response = updateListModelToLNDatabaseThereIsParameterCBFVM.updateListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          updateListModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
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
      DeleteModelToLNDatabaseCBFVM deleteModelToLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseCBFVM.deleteModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVM(
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
      DeleteModelToLNDatabaseThereIsParameterCBFVM deleteModelToLNDatabaseThereIsParameterCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseThereIsParameterCBFVM.deleteModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVM(
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
      DeleteModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseCBFVM.deleteModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          deleteModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantFive(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteModelToLNDatabaseThereIsParameterCBFVM.setBaseModelDomainCBFVM = cbfvm;
    
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseThereIsParameterCBFVM.deleteModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          deleteModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantSix(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> deleteModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    deleteModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter
    ];
    var responseTwo = await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
        _getMapEnumBaseModelDomainVMAndBaseModelDomain[
          EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter
        ],
        deleteModelToLocalDatabaseThereIsParameterDataSource
    );
    if(responseTwo.isSuccessResponse) {
      deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(responseTwo.getData);
    } else {
      deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(responseTwo.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantSeven(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseCBFVM,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> deleteModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;
    
    deleteModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter
    ];
    var response = deleteModelToLNDatabaseCBFVM.deleteModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          deleteModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantEight(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseThereIsParameterCBFVM,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> deleteModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteModelToLNDatabaseThereIsParameterCBFVM.setBaseModelDomainCBFVM = cbfvm;

    deleteModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
    EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter
    ];
    var response = deleteModelToLNDatabaseThereIsParameterCBFVM.deleteModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          deleteModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVM(
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource)
  {
    return ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter],
        deleteListModelToLocalDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVMVariantTwo(
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseCBFVM deleteListModelToLNDatabaseCBFVM) 
  async {
    ResponseGenericBoolAndDomainException response = deleteListModelToLNDatabaseCBFVM.deleteListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter],
          deleteListModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVMVariantThree(
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseThereIsParameterCBFVM deleteListModelToLNDatabaseThereIsParameterCBFVM) 
  async {
    ResponseGenericBoolAndDomainException response = deleteListModelToLNDatabaseThereIsParameterCBFVM.deleteListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter],
          deleteListModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVMVariantFour(
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> deleteListModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;
    
    var response = deleteListModelToLNDatabaseCBFVM.deleteListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          deleteListModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVMVariantFive(
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> deleteListModelToLNDatabaseThereIsParameterCBFVM) 
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;
    
    var response = deleteListModelToLNDatabaseThereIsParameterCBFVM.deleteListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          deleteListModelToLocalDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVMVariantSix(
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> deleteListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter
    ];
    var response = await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter],
        deleteListModelToLocalDatabaseThereIsParameterDataSource
    );
    if(response.isSuccessResponse) {
      deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(response.getData);
    } else {
      deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVMVariantSeven(
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> deleteListModelToLNDatabaseCBFVM,
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> deleteListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;
    
    deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter
    ];
    var response = deleteListModelToLNDatabaseCBFVM.deleteListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          deleteListModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVMVariantEight(
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> deleteListModelToLNDatabaseThereIsParameterCBFVM,
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> deleteListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter
    ];
    var response = deleteListModelToLNDatabaseThereIsParameterCBFVM.deleteListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(
          cbfvm,
          deleteListModelToLocalDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
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
      GetListModelFromLNDatabaseCBFVM getListModelFromLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException responseGenericBoolAndDomainException = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(responseGenericBoolAndDomainException.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]);
    } else {
      return Response.exception(responseGenericBoolAndDomainException.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVMVariantThree(
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource,
      GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getListModelFromLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter].cloneObjectForCBFVM();
    getListModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVMVariantFour(
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource,
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getListModelFromLNDatabaseThereIsParameterOWMDAFVM)
  async {
    getListModelFromLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
    ];
    var response = await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
        getListModelFromNetworkDatabaseDataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
    if(response.isSuccessResponse) {
      getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(response.getData);
    } else {
      getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVMVariantFive(
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource,
      GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getListModelFromLNDatabaseCBFVM,
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getListModelFromLNDatabaseOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter].cloneObjectForCBFVM();
    getListModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;
    getListModelFromLNDatabaseOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
      );
      if(responseTwo.isSuccessResponse) {
        getListModelFromLNDatabaseOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        getListModelFromLNDatabaseOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      getListModelFromLNDatabaseOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource) 
  {
    return ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromNetworkDatabaseThereIsParameterDataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantTwo(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseCBFVM getListModelFromLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException responseGenericBoolAndDomainException = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(responseGenericBoolAndDomainException.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter]);
    } else {
      return Response.exception(responseGenericBoolAndDomainException.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getListModelFromLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter].cloneObjectForCBFVM();
    getListModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getListModelFromLNDatabaseThereIsParameterOWMDAFVM)
  async {
    getListModelFromLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
    ];
    var responseTwo = await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromNetworkDatabaseThereIsParameterDataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter]
    );
    if(responseTwo.isSuccessResponse) {
      getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(responseTwo.getData);
    } else {
      getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(responseTwo.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantFive(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource,
      GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getListModelFromLNDatabaseCBFVM,
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getListModelFromLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter].cloneObjectForCBFVM();
    getListModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    getListModelFromLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = getListModelFromLNDatabaseCBFVM.callToMethodGetListModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter]
      );
      if(responseTwo.isSuccessResponse) {
        getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      getListModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource)
  {
    return ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        this,
        getModelFromNetworkDatabaseThereIsParameterDataSource,
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromNetworkDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantTwo(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseCBFVM getModelFromLNDatabaseThereIsParameterCBFVM)
  async {
    ResponseGenericBoolAndDomainException responseGenericBoolAndDomainException = getModelFromLNDatabaseThereIsParameterCBFVM.callToMethodGetModelFromLNDatabaseCBFVM();
    if(responseGenericBoolAndDomainException.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          this,
          getModelFromNetworkDatabaseThereIsParameterDataSource,
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromNetworkDatabaseThereIsParameter]);
    } else {
      return Response.exception(responseGenericBoolAndDomainException.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getModelFromLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    getModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = getModelFromLNDatabaseCBFVM.callToMethodGetModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          this,
          getModelFromNetworkDatabaseThereIsParameterDataSource,
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromNetworkDatabaseThereIsParameter]);
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getModelFromLNDatabaseThereIsParameterOWMDAFVM)
  async {
    getModelFromLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter
    ];
    var response = await ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        this,
        getModelFromNetworkDatabaseThereIsParameterDataSource,
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromNetworkDatabaseThereIsParameter]
    );
    if(response.isSuccessResponse) {
      getModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(response.getData);
    } else {
      getModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantFive(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource,
      GetModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getModelFromLNDatabaseCBFVM,
      GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getModelFromLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    getModelFromLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;
    getModelFromLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter
    ];

    ResponseGenericBoolAndDomainException response = getModelFromLNDatabaseCBFVM.callToMethodGetModelFromLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          this,
          getModelFromNetworkDatabaseThereIsParameterDataSource,
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromNetworkDatabaseThereIsParameter]
      );
      if(responseTwo.isSuccessResponse) {
        getModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        getModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      getModelFromLNDatabaseThereIsParameterOWMDAFVM.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVM(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource)
  {
    return ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVM(
        this,
        insertModelToNetworkDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseCBFVM insertModelToLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVM(
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
      InsertModelToLNDatabaseThereIsParameterCBFVM insertModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var response = insertModelToLNDatabaseThereIsParameterCBFVM.insertModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVM(
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
      InsertModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          insertModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantFive(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertModelToLNDatabaseThereIsParameterCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = insertModelToLNDatabaseThereIsParameterCBFVM.insertModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          insertModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantSix(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> insertModelToLNDatabaseOWMDAFVM)
  async {
    var responseTwo = await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
        _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter],
        insertModelToNetworkDatabaseThereIsParameterDataSource
    );
    if(responseTwo.isSuccessResponse) {
      insertModelToLNDatabaseOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(responseTwo.getData);
    } else {
      insertModelToLNDatabaseOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(responseTwo.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantSeven(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseCBFVM,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> insertModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    insertModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter
    ];
    var response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          insertModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        insertModelToLNDatabaseThereIsParameterOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        insertModelToLNDatabaseThereIsParameterOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      insertModelToLNDatabaseThereIsParameterOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantEight(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseCBFVM,
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> insertModelToLNDatabaseOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    insertModelToLNDatabaseOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter
    ];
    var response = insertModelToLNDatabaseCBFVM.insertModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          insertModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        insertModelToLNDatabaseOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        insertModelToLNDatabaseOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      insertModelToLNDatabaseOWMDAFVM.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }
  
  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVM(
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource)
  {
    return ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter],
        insertListModelToNetworkDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseCBFVM insertListModelToLNDatabaseCBFVM) 
  async {
    ResponseGenericBoolAndDomainException response = insertListModelToLNDatabaseCBFVM.insertListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter],
          insertListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseThereIsParameterCBFVM insertListModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var response = insertListModelToLNDatabaseThereIsParameterCBFVM.insertListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter],
          insertListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> insertListModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = insertListModelToLNDatabaseCBFVM.insertListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          insertListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVMVariantFive(
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> insertListModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = insertListModelToLNDatabaseThereIsParameterCBFVM.insertListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          insertListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVMVariantSix(
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> insertListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    insertListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter
    ];
    var response = await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter],
        insertListModelToNetworkDatabaseThereIsParameterDataSource
    );
    if(response.isSuccessResponse) {
      insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(response.getData);
    } else {
      insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVMVariantSeven(
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> insertListModelToLNDatabaseCBFVM,
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> insertListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    insertListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = insertListModelToLNDatabaseCBFVM.insertListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          insertListModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVMVariantEight(
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource,
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> insertListModelToLNDatabaseThereIsParameterCBFVM,
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> insertListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    insertListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    insertListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = insertListModelToLNDatabaseThereIsParameterCBFVM.insertListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          insertListModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      insertListModelToLNDatabaseThereIsParameterOWMDAFVM.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
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
      UpdateModelToLNDatabaseCBFVM updateModelToLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseCBFVM.updateModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVM(
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
      UpdateModelToLNDatabaseThereIsParameterCBFVM updateModelToLNDatabaseThereIsParameterCBFVM) 
  async {
    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseThereIsParameterCBFVM.updateModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVM(
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
      UpdateModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseCBFVM.updateModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          updateModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantFive(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateModelToLNDatabaseThereIsParameterCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = updateModelToLNDatabaseThereIsParameterCBFVM.updateModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          updateModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantSix(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> updateModelToLNDatabaseOWMDAFVM)
  async {
    var responseTwo = await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
        _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter],
        updateModelToNetworkDatabaseThereIsParameterDataSource
    );
    if(responseTwo.isSuccessResponse) {
      updateModelToLNDatabaseOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(responseTwo.getData);
    } else {
      updateModelToLNDatabaseOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(responseTwo.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantSeven(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseCBFVM,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> updateModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    updateModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter
    ];
    var response = updateModelToLNDatabaseCBFVM.updateModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          updateModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        updateModelToLNDatabaseThereIsParameterOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        updateModelToLNDatabaseThereIsParameterOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      updateModelToLNDatabaseThereIsParameterOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantEight(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseCBFVM,
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> updateModelToLNDatabaseOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    updateModelToLNDatabaseOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter
    ];
    var response = updateModelToLNDatabaseCBFVM.updateModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          updateModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        updateModelToLNDatabaseOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        updateModelToLNDatabaseOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      updateModelToLNDatabaseOWMDAFVM.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVM(
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource)
  {
    return ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter],
        updateListModelToNetworkDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseCBFVM updateListModelToLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = updateListModelToLNDatabaseCBFVM.updateListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter],
          updateListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseThereIsParameterCBFVM updateListModelToLNDatabaseThereIsParameterCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = updateListModelToLNDatabaseThereIsParameterCBFVM.updateListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter],
          updateListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> updateListModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = updateListModelToLNDatabaseCBFVM.updateListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          updateListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVMVariantFive(
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> updateListModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = updateListModelToLNDatabaseThereIsParameterCBFVM.updateListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          updateListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVMVariantSix(
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> updateListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    updateListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter],
        updateListModelToNetworkDatabaseThereIsParameterDataSource
    );
    if(response.isSuccessResponse) {
      updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(response.getData);
    } else {
      updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVMVariantSeven(
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> updateListModelToLNDatabaseCBFVM,
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> updateListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    updateListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter
    ];
    ResponseGenericBoolAndDomainException response = updateListModelToLNDatabaseCBFVM.updateListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          updateListModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVMVariantEight(
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource,
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> updateListModelToLNDatabaseThereIsParameterCBFVM,
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> updateListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    updateListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    updateListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter
    ];
    var response = updateListModelToLNDatabaseThereIsParameterCBFVM.updateListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          updateListModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      updateListModelToLNDatabaseThereIsParameterOWMDAFVM.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
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
      DeleteModelToLNDatabaseCBFVM deleteModelToLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseCBFVM.deleteModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVM(
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
      DeleteModelToLNDatabaseThereIsParameterCBFVM deleteModelToLNDatabaseThereIsParameterCBFVM) 
  async {
    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseThereIsParameterCBFVM.deleteModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVM(
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
      DeleteModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseCBFVM.deleteModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          deleteModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantFive(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteModelToLNDatabaseThereIsParameterCBFVM.setBaseModelDomainCBFVM = cbfvm;

    ResponseGenericBoolAndDomainException response = deleteModelToLNDatabaseThereIsParameterCBFVM.deleteModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          deleteModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantSix(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> deleteModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    deleteModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter
    ];
    var responseTwo = await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
        _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter],
        deleteModelToNetworkDatabaseThereIsParameterDataSource
    );
    if(responseTwo.isSuccessResponse) {
      deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(responseTwo.getData);
    } else {
      deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(responseTwo.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantSeven(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseCBFVM,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> deleteModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteModelToLNDatabaseCBFVM.setBaseModelDomainCBFVM = cbfvm;

    deleteModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter
    ];
    var response = deleteModelToLNDatabaseCBFVM.deleteModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          deleteModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantEight(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseThereIsParameterCBFVM,
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> deleteModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteModelToLNDatabaseThereIsParameterCBFVM.setBaseModelDomainCBFVM = cbfvm;

    deleteModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
      EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter
    ];
    var response = deleteModelToLNDatabaseThereIsParameterCBFVM.deleteModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          cbfvm,
          deleteModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      deleteModelToLNDatabaseThereIsParameterOWMDAFVM.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVM(
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource)
  {
    return ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter],
        deleteListModelToNetworkDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseCBFVM deleteListModelToLNDatabaseCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = deleteListModelToLNDatabaseCBFVM.deleteListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter],
          deleteListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseThereIsParameterCBFVM deleteListModelToLNDatabaseThereIsParameterCBFVM)
  async {
    ResponseGenericBoolAndDomainException response = deleteListModelToLNDatabaseThereIsParameterCBFVM.deleteListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter],
          deleteListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> deleteListModelToLNDatabaseCBFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    var response = deleteListModelToLNDatabaseCBFVM.deleteListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          deleteListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVMVariantFive(
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> deleteListModelToLNDatabaseThereIsParameterCBFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    var response = deleteListModelToLNDatabaseThereIsParameterCBFVM.deleteListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      return await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          deleteListModelToNetworkDatabaseThereIsParameterDataSource
      );
    } else {
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVMVariantSix(
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> deleteListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter
    ];
    var response = await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter],
        deleteListModelToNetworkDatabaseThereIsParameterDataSource
    );
    if(response.isSuccessResponse) {
      deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
      return Response.success(response.getData);
    } else {
      deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVMVariantSeven(
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseUsedProviderBaseListModelDomainCBFVM<Y> deleteListModelToLNDatabaseCBFVM,
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> deleteListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteListModelToLNDatabaseCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter
    ];
    var response = deleteListModelToLNDatabaseCBFVM.deleteListModelToLNDatabaseCBFVM();
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          deleteListModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVMVariantEight(
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource,
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> deleteListModelToLNDatabaseThereIsParameterCBFVM,
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> deleteListModelToLNDatabaseThereIsParameterOWMDAFVM)
  async {
    var cbfvm = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter].cloneObjectForCBFVM();
    deleteListModelToLNDatabaseThereIsParameterCBFVM.setBaseListModelDomainCBFVM = cbfvm;

    deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
      EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter
    ];
    var response = deleteListModelToLNDatabaseThereIsParameterCBFVM.deleteListModelToLNDatabaseThereIsParameterCBFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
            .getListModelDomain
    );
    if(response.isSuccessResponse) {
      var responseTwo = await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(
          cbfvm,
          deleteListModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(responseTwo.isSuccessResponse) {
        deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(responseTwo.getData);
      } else {
        deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(responseTwo.getException);
      }
    } else {
      deleteListModelToLNDatabaseThereIsParameterOWMDAFVM.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
      return Response.exception(response.getException);
    }
  }

  /// End ReadyModelNetworkDatabaseFVM

  /// Start ReadyListModelDomainForLNDatabaseFVM
  ///
  Response<bool, BaseException> baseInsertModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.insertModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<bool, BaseException> baseInsertListModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.insertListModelToListModelDomainForLocalDatabaseFVM(
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

  Response<bool, BaseException> baseUpdateListModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.updateListModelToListModelDomainForLocalDatabaseFVM(
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

  Response<bool, BaseException> baseDeleteListModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.deleteListModelToListModelDomainForLocalDatabaseFVM(
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

  Response<bool, BaseException> baseInsertListModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.insertListModelToListModelDomainForNetworkDatabaseFVM(
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

  Response<bool, BaseException> baseUpdateListModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.updateListModelToListModelDomainForNetworkDatabaseFVM(
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

  Response<bool, BaseException> baseDeleteListModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.deleteListModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  /// End ReadyListModelDomainForLNDatabaseFVM

  /// End Methods From ReadyClassesFVM **/
  
  /// Start Methods Base/EnumTypeParameter **/

  void setBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(
      BaseTypeParameter baseTypeParameter,
      EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM operation)
  {
    _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[operation] = baseTypeParameter;
  }

  void setEnumTypeParameterForIteratorForListModelLNDatabase(
      EnumTypeParameter enumTypeParameter,
      EnumTypeParameterForIteratorForListModelLNDatabaseVM operation)
  {
    _mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter[operation] = enumTypeParameter;
  }

  BaseTypeParameter getBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM operation)
  {
    return _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[operation];
  }

  EnumTypeParameter getEnumTypeParameterForIteratorForListModelLNDatabase(EnumTypeParameterForIteratorForListModelLNDatabaseVM operation) {
    return _mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter[operation];
  }

  /// End Methods Base/EnumTypeParameter **/

  /// Start Methods Model **/

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
    return _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation]?.stream;
  }
  
  void notifyStreamModel(EnumBaseModelDomainVM operation) {
    _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation]?.add(
        _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation]
    );
  }
  /// End Methods Model **/
  
  /// Start Methods ListModel **/

  List<T> getListModel(EnumBaseListModelDomainVM operation)  {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation]?.getListModelDomain;
  }

  void setListModel(List<T> newModel,EnumBaseListModelDomainVM operation) {
    _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation]?.setListModelDomain = newModel;
  }

  Future<List<T>> getFutureListModel(EnumBaseListModelDomainVM operation) async {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation]?.getListModelDomain;
  }
  
  Stream<List<T>> getStreamListModel(EnumBaseListModelDomainVM operation) {
    return _getMapEnumBaseListModelDomainVMAndStreamControllerForList[operation]?.stream;
  }

  void notifyStreamListModel(EnumBaseListModelDomainVM operation) {
    _getMapEnumBaseListModelDomainVMAndStreamControllerForList[operation]?.add(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation]?.getListModelDomain
    );
  }

  @protected
  Y getBaseListModelDomain(EnumBaseListModelDomainVM operation) {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation];
  }

  /// End Methods ListModel **/
  
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
      if(map.isNotEmpty) {
        for (dynamic object in map.values) {
          if (object != null) {
            object = null;
          }
        }
        map.clear();
      }
      map = null;
    }
  }

  void _disposeForMapEnumAndStreamController(Map<Enum,StreamController> map) {
    if(map != null) {
      if(map.isNotEmpty) {
        for (StreamController streamController in map.values) {
          if (streamController != null) {
            if (!streamController.isClosed) {
              streamController.close();
            }
            streamController = null;
          }
        }
        map.clear();
      }
      map = null;
    }
  }

}