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
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/delete_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_list_model_from_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_model_from_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/insert_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/update_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
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

abstract class BaseViewModel<T extends BaseModelDomain,Y extends BaseListModelDomain<T>> implements BaseDispose
{
  /* Constructor */
  final List<EnumBaseModelDomainVM> _listEnumBaseModelDomainVM;
  final List<EnumBaseListModelDomainVM> _listEnumBaseListModelDomainVM;
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

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

  /* CBFVM */
  InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
  InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM;
  UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
  UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM;
  DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
  DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM;
  GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> _getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM;
  GetModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> _getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM;

  /* OWMDAFVM*/
  InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
  InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM;
  UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
  UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM;
  DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
  DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM;
  GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
  GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;

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
    _disposeForCBFVMAndOWMDAFVM();
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
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantFour(
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
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVMVariantThree(
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
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVMVariantFour(
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

  /// Start Methods CBFVM **/

  InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> get insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM {
    if(_insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      return _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
    }
    return throw Exception("null insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM");
  }

  InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> get insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM {
    if(_insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      return _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM;
    }
    return throw Exception("null insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM");
  }

  UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> get updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM {
    if(_updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      return _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
    }
    return throw Exception("null updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM");
  }

  UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> get updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM {
    if(_updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      return _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM;
    }
    return throw Exception("null updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM");
  }

  DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> get deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM {
    if(_deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      return _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
    }
    return throw Exception("null deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM");
  }

  DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> get deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM {
    if(_deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      return _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM;
    }
    return throw Exception("null deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM");
  }

  GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> get getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM  {
    if(_getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM != null) {
      return _getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM;
    }
    return throw Exception("null getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM");
  }

  GetModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> get getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM {
    if(_getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM != null) {
      return _getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM;
    }
    return throw Exception("null getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM");
  }

  set setInsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM(
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM)
  {
    _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM = insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
  }

  set setInsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM(
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM)
  {
    _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM = insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM;
  }

  set setUpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM(
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM)
  {
    _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM = updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
  }

  set setUpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM(
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM)
  {
    _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM = updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM;
  }

  set setDeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM(
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM)
  {
    _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM = deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
  }

  set setDeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM(
     DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<Y> deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM)
  {
    _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM = deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM;
  }

  set setGetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM(
      GetListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM)
  {
    _getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM = getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM;
  }

  set setGetModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM(
      GetModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM<T> getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM)
  {
    _getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM = getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM;
  }

  /// End Methods CBFVM **/
  
  /// Start Methods OWMDAFVM **/

  InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> get insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM {
    if(_insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      return _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
    }
    return throw Exception("null getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM");
  }

  InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> get insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM {
    if(_insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      return _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM;
    }
    return throw Exception("null getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM");
  }

  UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> get updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM {
    if(_updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      return _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
    }
    return throw Exception("null getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM");
  }

  UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> get updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM {
    if(_updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      return _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM;
    }
    return throw Exception("null getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM");
  }

  DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> get deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM {
    if(_deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      return _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
    }
    return throw Exception("null getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM");
  }

  DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> get deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM {
    if(_deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      return _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM;
    }
    return throw Exception("null getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM");
  }

  GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> get getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM {
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      return _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
    }
    return throw Exception("null getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM");
  }

  GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> get getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM {
    if(_getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      return _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
    }
    return throw Exception("null getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM");
  }

  set setInsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM(
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM)
  {
    _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
  }

  set setInsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM(
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM)
  {
    _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM = insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM;
  }

  set setUpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM(
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM)
  {
    _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
  }

  set setUpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM(
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM)
  {
    _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM = updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM;
  }

  set setDeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM(
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM)
  {
    _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
  }

  set setDeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM(
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM<Y> deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM)
  {
    _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM = deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM;
  }

  set setGetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM(
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM)
  {
    _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
  }

  set setGetModelFromLNDatabaseUsedProviderBaseModelDomainOWMDAFVM(
      GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T> getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM)
  {
    _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM;
  }

  /// End Methods OWMDAFVM **/
  
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

  void _disposeForCBFVMAndOWMDAFVM() {
    if(_insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM = null;
    }
    if(_insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM = null;
    }
    if(_updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM = null;
    }
    if(_updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM = null;
    }
    if(_deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM = null;
    }
    if(_deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM = null;
    }
    if(_getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM != null) {
      _getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM = null;
    }
    if(_getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM != null) {
      _getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM = null;
    }

    if(_insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = null;
    }
    if(_insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM = null;
    }
    if(_updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = null;
    }
    if(_updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM = null;
    }
    if(_deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = null;
    }
    if(_deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM = null;
    }
    if(_getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = null;
    }
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = null;
    }
  }
}