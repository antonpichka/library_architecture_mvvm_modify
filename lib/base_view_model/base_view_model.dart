import 'dart:async';
import 'package:flutter/material.dart';
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
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_list_model_from_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_list_model_from_ln_database_used_provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/get_model_from_ln_database_there_is_parameter_used_provider_base_model_domain_cbfvm.dart';
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
  GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
  GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;

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
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource) async
  {
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter];

      var response = await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
          getListModelFromLocalDatabaseDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
      );
      if(response.isSuccessResponse) {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(getListModelFromLocalDatabaseDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVMVariantThree(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource)
  async {
    if(_getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM != null
        && _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null)
    {
      var cbfvm = _getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
      ].cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
      ];
      ResponseGenericBoolAndDomainException response = cbfvm.callToMethodGetListModelFromLNDatabaseCBFVM();
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
            getListModelFromLocalDatabaseDataSource,
            _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(getListModelFromLocalDatabaseDataSource);
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
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource)
  async {
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null)
    {
      var cbfvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      cbfvm.setBaseModelDomainCBFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
      ].cloneObject();

      ResponseGenericBoolAndDomainException response = cbfvm.callToMethodGetListModelFromLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        return await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
            getListModelFromLocalDatabaseThereIsParameterDataSource,
            _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
            _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter]);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(getListModelFromLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource)
  async {
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM
          .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
      ];
      var response = await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromLocalDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter]
      );
      if (response.isSuccessResponse) {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(getListModelFromLocalDatabaseThereIsParameterDataSource);
    }
  }
  
  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource)
  async {
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null &&
        _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null)
    {
      var cbfvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
      ].cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
      ];
      ResponseGenericBoolAndDomainException response = cbfvm.callToMethodGetListModelFromLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
            getListModelFromLocalDatabaseThereIsParameterDataSource,
            _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
            _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter]
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(getListModelFromLocalDatabaseThereIsParameterDataSource);
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
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource)
  async {
    if(_getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      var cbfvm = _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      cbfvm.setBaseModelDomainCBFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter
      ].cloneObject();

      ResponseGenericBoolAndDomainException response = cbfvm.callToMethodGetModelFromLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if (response.isSuccessResponse) {
        return await ReadyModelLocalDatabaseFVM.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
            this,
            getModelFromLocalDatabaseThereIsParameterDataSource,
            _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromLocalDatabaseThereIsParameter]
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(getModelFromLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource)
  async {
    if(_getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter
      ];

      var response = await ReadyModelLocalDatabaseFVM.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
          this, 
          getModelFromLocalDatabaseThereIsParameterDataSource, 
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromLocalDatabaseThereIsParameter]
      );
      if (response.isSuccessResponse) {
        owmdafvm.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(getModelFromLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource)
  async {
    if(_getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null &&
        _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null)
    {
      var cbfvm = _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter
      ].cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter
      ];

      ResponseGenericBoolAndDomainException response = cbfvm.callToMethodGetModelFromLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if (response.isSuccessResponse) {
        var responseTwo = await ReadyModelLocalDatabaseFVM.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
            this,
            getModelFromLocalDatabaseThereIsParameterDataSource,
            _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromLocalDatabaseThereIsParameter]
        );
        if (responseTwo.isSuccessResponse) {
          owmdafvm.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(getModelFromLocalDatabaseThereIsParameterDataSource);
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
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      cbfvm.setBaseModelDomainCBFVM = model;

      ResponseGenericBoolAndDomainException response = cbfvm.insertModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if (response.isSuccessResponse) {
        return await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
            model,
            insertModelToLocalDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertModelToLocalDatabaseThereIsParameterFVM(insertModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantThree(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter];

      var response = await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter],
          insertModelToLocalDatabaseThereIsParameterDataSource
      );
      if (response.isSuccessResponse) {
        owmdafvm.insertModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertModelToLocalDatabaseThereIsParameterFVM(insertModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVMVariantFour(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null &&
        _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null )
    {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = model;
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter
      ];

      var response = cbfvm.insertModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVMVariantTwo(
            model,
            insertModelToLocalDatabaseThereIsParameterDataSource
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.insertModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertModelToLocalDatabaseThereIsParameterFVM(insertModelToLocalDatabaseThereIsParameterDataSource);
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
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      cbfvm.setBaseListModelDomainCBFVM = model;

      ResponseGenericBoolAndDomainException response = cbfvm.insertListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if (response.isSuccessResponse) {
        return await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(
            model,
            insertListModelToLocalDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertListModelToLocalDatabaseThereIsParameterFVM(insertListModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVMVariantThree(
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      var owmdafvm = _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter
      ];

      var response = await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter],
          insertListModelToLocalDatabaseThereIsParameterDataSource
      );
      if(response.isSuccessResponse) {
        owmdafvm.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertListModelToLocalDatabaseThereIsParameterFVM(insertListModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVMVariantFour(
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null &&
        _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null)
    {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      var owmdafvm = _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseListModelDomainCBFVM = model;
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter
      ];
      ResponseGenericBoolAndDomainException response = cbfvm.insertListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if (response.isSuccessResponse) {
        var responseTwo = await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(
            model,
            insertListModelToLocalDatabaseThereIsParameterDataSource
        );
        if (responseTwo.isSuccessResponse) {
          owmdafvm.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertListModelToLocalDatabaseThereIsParameterFVM(insertListModelToLocalDatabaseThereIsParameterDataSource);
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
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      cbfvm.setBaseModelDomainCBFVM = model;

      ResponseGenericBoolAndDomainException response = cbfvm.updateModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        return await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
            model,
            updateModelToLocalDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateModelToLocalDatabaseThereIsParameterFVM(updateModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantThree(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter];

      var response = await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter],
          updateModelToLocalDatabaseThereIsParameterDataSource
      );
      if (response.isSuccessResponse) {
        owmdafvm.updateModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateModelToLocalDatabaseThereIsParameterFVM(updateModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVMVariantFour(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null &&
        _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null)
    {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = model;
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter];

      var response = cbfvm.updateModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVMVariantTwo(
            model,
            updateModelToLocalDatabaseThereIsParameterDataSource
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.updateModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateModelToLocalDatabaseThereIsParameterFVM(updateModelToLocalDatabaseThereIsParameterDataSource);
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
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      cbfvm.setBaseListModelDomainCBFVM = model;

      ResponseGenericBoolAndDomainException response = cbfvm.updateListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        return await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(
            model,
            updateListModelToLocalDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateListModelToLocalDatabaseThereIsParameterFVM(updateListModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVMVariantThree(
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      var owmdafvm = _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter];

      ResponseGenericBoolAndDomainException response = await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter],
          updateListModelToLocalDatabaseThereIsParameterDataSource
      );
      if(response.isSuccessResponse) {
        owmdafvm.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateListModelToLocalDatabaseThereIsParameterFVM(updateListModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVMVariantFour(
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null &&
        _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null)
    {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      var owmdafvm = _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseListModelDomainCBFVM = model;
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter];

      var response = cbfvm.updateListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(
            model,
            updateListModelToLocalDatabaseThereIsParameterDataSource
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateListModelToLocalDatabaseThereIsParameterFVM(updateListModelToLocalDatabaseThereIsParameterDataSource);
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
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      cbfvm.setBaseModelDomainCBFVM = model;

      ResponseGenericBoolAndDomainException response = cbfvm.deleteModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        return await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
            model,
            deleteModelToLocalDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteModelToLocalDatabaseThereIsParameterFVM(deleteModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantThree(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter
      ];
      var response = await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
          _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter],
          deleteModelToLocalDatabaseThereIsParameterDataSource
      );
      if(response.isSuccessResponse) {
        owmdafvm.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteModelToLocalDatabaseThereIsParameterFVM(deleteModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVMVariantFour(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null &&
        _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null)
    {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = model;
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter];

      var response = cbfvm.deleteModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVMVariantTwo(
            model,
            deleteModelToLocalDatabaseThereIsParameterDataSource
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteModelToLocalDatabaseThereIsParameterFVM(deleteModelToLocalDatabaseThereIsParameterDataSource);
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
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      cbfvm.setBaseListModelDomainCBFVM = model;

      var response = cbfvm.deleteListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        return await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(
            model,
            deleteListModelToLocalDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteListModelToLocalDatabaseThereIsParameterFVM(deleteListModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVMVariantThree(
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      var owmdafvm = _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter
      ];
      
      var response = await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter],
          deleteListModelToLocalDatabaseThereIsParameterDataSource
      );
      if(response.isSuccessResponse) {
        owmdafvm.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteListModelToLocalDatabaseThereIsParameterFVM(deleteListModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVMVariantFour(
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(_deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null && 
        _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null)
    {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter].cloneObject();
      var cbfvm = _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      var owmdafvm = _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();
      
      cbfvm.setBaseListModelDomainCBFVM = model;
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter
      ];

      var response = cbfvm.deleteListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(
            model,
            deleteListModelToLocalDatabaseThereIsParameterDataSource
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteListModelToLocalDatabaseThereIsParameterFVM(deleteListModelToLocalDatabaseThereIsParameterDataSource);
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
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource) async
  {
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter];

      var response = await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
      );
      if(response.isSuccessResponse) {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(getListModelFromNetworkDatabaseDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVMVariantThree(
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource)
  async {
    if(_getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM != null
        && _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null)
    {
      var cbfvm = _getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
      ].cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
      ];
      ResponseGenericBoolAndDomainException response = cbfvm.callToMethodGetListModelFromLNDatabaseCBFVM();
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
            getListModelFromNetworkDatabaseDataSource,
            _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(getListModelFromNetworkDatabaseDataSource);
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
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null)
    {
      var cbfvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      cbfvm.setBaseModelDomainCBFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
      ].cloneObject();

      ResponseGenericBoolAndDomainException response = cbfvm.callToMethodGetListModelFromLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        return await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
            getListModelFromNetworkDatabaseThereIsParameterDataSource,
            _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
            _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter]);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(getListModelFromNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
      ];
      var response = await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          getListModelFromNetworkDatabaseThereIsParameterDataSource,
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter]
      );
      if (response.isSuccessResponse) {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(getListModelFromNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null &&
        _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null)
    {
      var cbfvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
      ].cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
      ];
      ResponseGenericBoolAndDomainException response = cbfvm.callToMethodGetListModelFromLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
            getListModelFromNetworkDatabaseThereIsParameterDataSource,
            _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
            _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter]
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.callToMethodGetListModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(getListModelFromNetworkDatabaseThereIsParameterDataSource);
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
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      var cbfvm = _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      cbfvm.setBaseModelDomainCBFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter
      ].cloneObject();

      ResponseGenericBoolAndDomainException response = cbfvm.callToMethodGetModelFromLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if (response.isSuccessResponse) {
        return await ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
            this,
            getModelFromNetworkDatabaseThereIsParameterDataSource,
            _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromNetworkDatabaseThereIsParameter]
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(getModelFromNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantThree(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter
      ];
      var response = await ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
          this,
          getModelFromNetworkDatabaseThereIsParameterDataSource,
          _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromNetworkDatabaseThereIsParameter]
      );
      if (response.isSuccessResponse) {
        owmdafvm.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(getModelFromNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVMVariantFour(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null &&
        _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null)
    {
      var cbfvm = _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter
      ].cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter
      ];

      ResponseGenericBoolAndDomainException response = cbfvm.callToMethodGetModelFromLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if (response.isSuccessResponse) {
        var responseTwo = await ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
            this,
            getModelFromNetworkDatabaseThereIsParameterDataSource,
            _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromNetworkDatabaseThereIsParameter]
        );
        if (responseTwo.isSuccessResponse) {
          owmdafvm.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(getModelFromNetworkDatabaseThereIsParameterDataSource);
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
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      cbfvm.setBaseModelDomainCBFVM = model;

      ResponseGenericBoolAndDomainException response = cbfvm.insertModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if (response.isSuccessResponse) {
        return await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
            model,
            insertModelToNetworkDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertModelToNetworkDatabaseThereIsParameterFVM(insertModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter];

      var response = await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter],
          insertModelToNetworkDatabaseThereIsParameterDataSource
      );
      if (response.isSuccessResponse) {
        owmdafvm.insertModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertModelToNetworkDatabaseThereIsParameterFVM(insertModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null &&
        _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null )
    {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = model;
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter
      ];

      var response = cbfvm.insertModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
            model,
            insertModelToNetworkDatabaseThereIsParameterDataSource
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.insertModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.insertModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertModelToNetworkDatabaseThereIsParameterFVM(insertModelToNetworkDatabaseThereIsParameterDataSource);
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
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      cbfvm.setBaseListModelDomainCBFVM = model;

      ResponseGenericBoolAndDomainException response = cbfvm.insertListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if (response.isSuccessResponse) {
        return await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(
            model,
            insertListModelToNetworkDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertListModelToNetworkDatabaseThereIsParameterFVM(insertListModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      var owmdafvm = _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter
      ];

      var response = await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter],
          insertListModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(response.isSuccessResponse) {
        owmdafvm.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertListModelToNetworkDatabaseThereIsParameterFVM(insertListModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null &&
        _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null)
    {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      var owmdafvm = _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseListModelDomainCBFVM = model;
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter
      ];
      ResponseGenericBoolAndDomainException response = cbfvm.insertListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if (response.isSuccessResponse) {
        var responseTwo = await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(
            model,
            insertListModelToNetworkDatabaseThereIsParameterDataSource
        );
        if (responseTwo.isSuccessResponse) {
          owmdafvm.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.insertListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseInsertListModelToNetworkDatabaseThereIsParameterFVM(insertListModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVM(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource)
  {
    return ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVM(
        this,
        updateModelToNetworkDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      cbfvm.setBaseModelDomainCBFVM = model;

      ResponseGenericBoolAndDomainException response = cbfvm.updateModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        return await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
            model,
            updateModelToNetworkDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateModelToNetworkDatabaseThereIsParameterFVM(updateModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter];

      var response = await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter],
          updateModelToNetworkDatabaseThereIsParameterDataSource
      );
      if (response.isSuccessResponse) {
        owmdafvm.updateModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateModelToNetworkDatabaseThereIsParameterFVM(updateModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null &&
        _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null)
    {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = model;
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter];

      var response = cbfvm.updateModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
            model,
            updateModelToNetworkDatabaseThereIsParameterDataSource
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.updateModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.updateModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateModelToNetworkDatabaseThereIsParameterFVM(updateModelToNetworkDatabaseThereIsParameterDataSource);
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
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      cbfvm.setBaseListModelDomainCBFVM = model;

      ResponseGenericBoolAndDomainException response = cbfvm.updateListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        return await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(
            model,
            updateListModelToNetworkDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateListModelToNetworkDatabaseThereIsParameterFVM(updateListModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      var owmdafvm = _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter];

      ResponseGenericBoolAndDomainException response = await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter],
          updateListModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(response.isSuccessResponse) {
        owmdafvm.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateListModelToNetworkDatabaseThereIsParameterFVM(updateListModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null &&
        _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null)
    {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      var owmdafvm = _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseListModelDomainCBFVM = model;
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter];

      var response = cbfvm.updateListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(
            model,
            updateListModelToNetworkDatabaseThereIsParameterDataSource
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.updateListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseUpdateListModelToNetworkDatabaseThereIsParameterFVM(updateListModelToNetworkDatabaseThereIsParameterDataSource);
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
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      cbfvm.setBaseModelDomainCBFVM = model;

      ResponseGenericBoolAndDomainException response = cbfvm.deleteModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        return await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
            model,
            deleteModelToNetworkDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteModelToNetworkDatabaseThereIsParameterFVM(deleteModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      var owmdafvm = _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[
        EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter
      ];
      var response = await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
          _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter],
          deleteModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(response.isSuccessResponse) {
        owmdafvm.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteModelToNetworkDatabaseThereIsParameterFVM(deleteModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null &&
        _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null)
    {
      var model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM.cloneObject();
      var owmdafvm = _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseModelDomainCBFVM = model;
      owmdafvm.setBaseModelDomainOWMDAFVM = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter];

      var response = cbfvm.deleteModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
            model,
            deleteModelToNetworkDatabaseThereIsParameterDataSource
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.deleteModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteModelToNetworkDatabaseThereIsParameterFVM(deleteModelToNetworkDatabaseThereIsParameterDataSource);
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
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null) {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      cbfvm.setBaseListModelDomainCBFVM = model;

      var response = cbfvm.deleteListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        return await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(
            model,
            deleteListModelToNetworkDatabaseThereIsParameterDataSource
        );
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteListModelToNetworkDatabaseThereIsParameterFVM(deleteListModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVMVariantThree(
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null) {
      var owmdafvm = _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter
      ];

      var response = await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter],
          deleteListModelToNetworkDatabaseThereIsParameterDataSource
      );
      if(response.isSuccessResponse) {
        owmdafvm.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
        return Response.success(response.getData);
      } else {
        owmdafvm.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteListModelToNetworkDatabaseThereIsParameterFVM(deleteListModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVMVariantFour(
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(_deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM != null &&
        _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM != null)
    {
      var model = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter].cloneObject();
      var cbfvm = _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM.cloneObject();
      var owmdafvm = _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainOWMDAFVM.cloneObject();

      cbfvm.setBaseListModelDomainCBFVM = model;
      owmdafvm.setBaseListModelDomainOWMDAFVM = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[
        EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter
      ];

      var response = cbfvm.deleteListModelToLNDatabaseThereIsParameterCBFVM(
          _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM
              .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
              .getListModelDomain
      );
      if(response.isSuccessResponse) {
        var responseTwo = await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(
            model,
            deleteListModelToNetworkDatabaseThereIsParameterDataSource
        );
        if(responseTwo.isSuccessResponse) {
          owmdafvm.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(true);
          return Response.success(responseTwo.getData);
        } else {
          owmdafvm.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
          return Response.exception(responseTwo.getException);
        }
      } else {
        owmdafvm.deleteListModelToLNDatabaseThereIsParameterOWMDAFVM(false);
        return Response.exception(response.getException);
      }
    } else {
      return baseDeleteListModelToNetworkDatabaseThereIsParameterFVM(deleteListModelToNetworkDatabaseThereIsParameterDataSource);
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

  GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> get getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM  {
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      return _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
    }
    return throw Exception("null getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM");
  }


  GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> get getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM {
    if(_getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      return _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
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

  set setGetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM(
      GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM)
  {
    _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM = getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM;
  }

  set setGetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM(
      GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T> getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM)
  {
    _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM = getModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM;
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
    if(_getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM != null) {
      _getListModelFromLNDatabaseUsedProviderBaseModelDomainCBFVM = null;
    }
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM = null;
    }
    if(_getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM != null) {
      _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM = null;
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
    if(_getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      _getListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = null;
    }
    if(_getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM != null) {
      _getModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM = null;
    }
  }
}