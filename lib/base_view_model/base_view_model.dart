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
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/delete_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/delete_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/insert_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/insert_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/update_list_model_to_ln_database_there_is_parameter_used_provider_base_list_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/update_model_to_ln_database_there_is_parameter_used_provider_base_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_converters_to_model_local_or_network/converter_to_base_list_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/interface_converters_to_model_local_or_network/converter_to_base_list_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/interface_converters_to_model_local_or_network/converter_to_base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/interface_converters_to_model_local_or_network/converter_to_base_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends BaseModelDomain,Y extends BaseListModelDomain<T>> implements BaseDispose
{
  /* init data */
  final List<EnumBaseModelDomainVM> _listEnumBaseModelDomainVM;
  final List<EnumBaseListModelDomainVM> _listEnumBaseListModelDomainVM;
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* CBFVM */
  final InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM<T> insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM;
  final InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM<Y> insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM;
  final UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM<T> updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM;
  final UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM<Y> updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM;
  final DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM<T> deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM;
  final DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM<Y> deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM;

  /* Converter To Model */
  final ConverterToBaseModelLocalDatabase<T> converterToBaseModelLocalDatabase;
  final ConverterToBaseListModelLocalDatabase<Y> converterToBaseListModelLocalDatabase;
  final ConverterToBaseModelNetworkDatabase<T> converterToBaseModelNetworkDatabase;
  final ConverterToBaseListModelNetworkDatabase<Y> converterToBaseListModelNetworkDatabase;

  final Map<EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM,BaseTypeParameter> _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase = {
    EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromLocalDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromNetworkDatabaseThereIsParameter : BoolTypeParameter(false),

    EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter : BoolTypeParameter(false),
  };

  Map<Enum,BaseIterator> mapEnumAndBaseIterator = {};
  Map<EnumTypeParameterForIteratorForListModelLNDatabaseVM,EnumTypeParameter> mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter = {};

  Map<EnumBaseModelDomainVM,T> _mapEnumBaseModelDomainVMAndBaseModelDomain;
  Map<EnumBaseModelDomainVM,StreamController<T>> _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
  Map<EnumBaseListModelDomainVM,Y> _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _mapEnumBaseListModelDomainVMAndStreamControllerForList;

  BaseViewModel(
      this._listEnumBaseModelDomainVM,
      this._listEnumBaseListModelDomainVM,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      {this.converterToBaseModelLocalDatabase,
        this.converterToBaseListModelLocalDatabase, 
        this.converterToBaseModelNetworkDatabase,
        this.converterToBaseListModelNetworkDatabase, 
        this.insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM, 
        this.insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM, 
        this.updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM, 
        this.updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM, 
        this.deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM, 
        this.deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM}
      );

  BaseViewModel.forIterator(
      this._listEnumBaseModelDomainVM,
      this._listEnumBaseListModelDomainVM,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      {this.mapEnumAndBaseIterator, 
        this.mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter, 
        this.converterToBaseModelLocalDatabase,
        this.converterToBaseListModelLocalDatabase,
        this.converterToBaseModelNetworkDatabase,
        this.converterToBaseListModelNetworkDatabase,
        this.insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
        this.insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
        this.updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
        this.updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
        this.deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
        this.deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
      });

  @override
  void dispose() {
    _disposeForMapEnumAndStreamController(_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain);
    _disposeForMapEnumAndStreamController(_mapEnumBaseListModelDomainVMAndStreamControllerForList);
    _disposeForAnyMap(_mapEnumBaseModelDomainVMAndBaseModelDomain);
    _disposeForAnyMap(_mapEnumBaseListModelDomainVMAndBaseListModelDomain);
    _disposeForAnyMap(mapEnumAndBaseIterator);
    _disposeForAnyMap(mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter);
  }

  /// Start ReadyIteratorForBaseListModelLNDatabaseFVM
  ///
  @protected
  Response<BaseTypeParameter,BaseException> baseCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM()
  {
    return ReadyIteratorForBaseListModelLNDatabaseFVM.callToMethodSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIteratorFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
        mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter[EnumTypeParameterForIteratorForListModelLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter],
        mapEnumAndBaseIterator);
  }

  @protected
  Response<BaseTypeParameter,BaseException> baseCallToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM()
  {
    return ReadyIteratorForBaseListModelLNDatabaseFVM.callToMethodSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIteratorFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
        mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter[EnumTypeParameterForIteratorForListModelLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter],
        mapEnumAndBaseIterator);
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
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource) 
  {
    return ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromLocalDatabaseThereIsParameterDataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromLocalDatabaseThereIsParameter]);
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
  Future<Response<BaseTypeParameter,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVM(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseModelLocalDatabase == null) {
      return throw Exception("null converterToBaseModelLocalDatabase");
    }
    ConverterToBaseModelLocalDatabase ctmlorn = converterToBaseModelLocalDatabase.cloneObject();
    BaseModelDomain model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToLocalDatabaseThereIsParameter].cloneObject();
    if(insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM != null) {
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM cidbuacbfvm = insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseModelDomainCIDBUACBFVM = model;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.insertModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseModelDomainCTMLOrN = model;
        return await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseModelLocalDatabase(), insertModelToLocalDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseModelDomainCTMLOrN = model;
      return await ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseModelLocalDatabase(), insertModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<BaseTypeParameter,BaseException>> baseInsertListModelToLocalDatabaseThereIsParameterFVM(
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseListModelLocalDatabase == null) {
      return throw Exception("null converterToBaseListModelLocalDatabase");
    }
    ConverterToBaseListModelLocalDatabase ctmlorn = converterToBaseListModelLocalDatabase.cloneObject();
    BaseListModelDomain listModel = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter].cloneObject();
    if(insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM != null) {
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM cidbuacbfvm = insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseListModelDomainCIDBUACBFVM = listModel;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.insertListModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
        return await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelLocalDatabase(), insertListModelToLocalDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
      return await ReadyModelLocalDatabaseFVM.insertListModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelLocalDatabase(), insertListModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<BaseTypeParameter,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVM(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseModelLocalDatabase == null) {
      return throw Exception("null converterToBaseModelLocalDatabase");
    }
    ConverterToBaseModelLocalDatabase ctmlorn = converterToBaseModelLocalDatabase.cloneObject();
    BaseModelDomain model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToLocalDatabaseThereIsParameter].cloneObject();
    if(updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM != null) {
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM cidbuacbfvm = updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseModelDomainCIDBUACBFVM = model;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.updateModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseModelDomainCTMLOrN = model;
        return await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseModelLocalDatabase(), updateModelToLocalDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseModelDomainCTMLOrN = model;
      return await ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseModelLocalDatabase(), updateModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<BaseTypeParameter,BaseException>> baseUpdateListModelToLocalDatabaseThereIsParameterFVM(
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseListModelLocalDatabase == null) {
      return throw Exception("null converterToBaseListModelLocalDatabase");
    }
    ConverterToBaseListModelLocalDatabase ctmlorn = converterToBaseListModelLocalDatabase.cloneObject();
    BaseListModelDomain listModel = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToLocalDatabaseThereIsParameter].cloneObject();
    if(updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM != null) {
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM cidbuacbfvm = updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseListModelDomainCIDBUACBFVM = listModel;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.updateListModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
        return await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelLocalDatabase(), updateListModelToLocalDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
      return await ReadyModelLocalDatabaseFVM.updateListModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelLocalDatabase(), updateListModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<BaseTypeParameter,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVM(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseModelLocalDatabase == null) {
      return throw Exception("null converterToBaseModelLocalDatabase");
    }
    ConverterToBaseModelLocalDatabase ctmlorn = converterToBaseModelLocalDatabase.cloneObject();
    BaseModelDomain model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter].cloneObject();
    if(deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM != null) {
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM cidbuacbfvm = deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseModelDomainCIDBUACBFVM = model;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.deleteModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseModelDomainCTMLOrN = model;
        return await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseModelLocalDatabase(), deleteModelToLocalDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseModelDomainCTMLOrN = model;
      return await ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseModelLocalDatabase(), deleteModelToLocalDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<BaseTypeParameter,BaseException>> baseDeleteListModelToLocalDatabaseThereIsParameterFVM(
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseListModelLocalDatabase == null) {
      return throw Exception("null converterToBaseListModelLocalDatabase");
    }
    ConverterToBaseListModelLocalDatabase ctmlorn = converterToBaseListModelLocalDatabase.cloneObject();
    BaseListModelDomain listModel = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToLocalDatabaseThereIsParameter].cloneObject();
    if(deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM != null) {
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM cidbuacbfvm = deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseListModelDomainCIDBUACBFVM = listModel;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.deleteListModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
        return await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelLocalDatabase(), deleteListModelToLocalDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
      return await ReadyModelLocalDatabaseFVM.deleteListModelToLocalDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelLocalDatabase(), deleteListModelToLocalDatabaseThereIsParameterDataSource);
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
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource)
  {
    return ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromNetworkDatabaseThereIsParameterDataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getListModelFromNetworkDatabaseThereIsParameter]);
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
  Future<Response<BaseTypeParameter,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVM(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseModelNetworkDatabase == null) {
      return throw Exception("null converterToBaseModelNetworkDatabase");
    }
    ConverterToBaseModelNetworkDatabase ctmlorn = converterToBaseModelNetworkDatabase.cloneObject();
    BaseModelDomain model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter].cloneObject();
    if(insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM != null) {
      InsertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM cidbuacbfvm = insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseModelDomainCIDBUACBFVM = model;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.insertModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseModelDomainCTMLOrN = model;
        return await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseModelNetworkDatabase(), insertModelToNetworkDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseModelDomainCTMLOrN = model;
      return await ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseModelNetworkDatabase(), insertModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<BaseTypeParameter,BaseException>> baseInsertListModelToNetworkDatabaseThereIsParameterFVM(
      InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseListModelNetworkDatabase == null) {
      return throw Exception("null converterToBaseListModelNetworkDatabase");
    }
    ConverterToBaseListModelNetworkDatabase ctmlorn = converterToBaseListModelNetworkDatabase.cloneObject();
    BaseListModelDomain listModel = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNetworkDatabaseThereIsParameter].cloneObject();
    if(insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM != null) {
      InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM cidbuacbfvm = insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseListModelDomainCIDBUACBFVM = listModel;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.insertListModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
        return await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelNetworkDatabase(), insertListModelToNetworkDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
      return await ReadyModelNetworkDatabaseFVM.insertListModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelNetworkDatabase(), insertListModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }
  
  @protected
  Future<Response<BaseTypeParameter,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVM(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseModelNetworkDatabase == null) {
      return throw Exception("null converterToBaseModelNetworkDatabase");
    }
    ConverterToBaseModelNetworkDatabase ctmlorn = converterToBaseModelNetworkDatabase.cloneObject();
    BaseModelDomain model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter].cloneObject();
    if(updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM != null) {
      UpdateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM cidbuacbfvm = updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseModelDomainCIDBUACBFVM = model;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.updateModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseModelDomainCTMLOrN = model;
        return await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseModelNetworkDatabase(), updateModelToNetworkDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseModelDomainCTMLOrN = model;
      return await ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseModelNetworkDatabase(), updateModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<BaseTypeParameter,BaseException>> baseUpdateListModelToNetworkDatabaseThereIsParameterFVM(
      UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseListModelNetworkDatabase == null) {
      return throw Exception("null converterToBaseListModelNetworkDatabase");
    }
    ConverterToBaseListModelNetworkDatabase ctmlorn = converterToBaseListModelNetworkDatabase.cloneObject();
    BaseListModelDomain listModel = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter].cloneObject();
    if(updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM != null) {
      UpdateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM cidbuacbfvm = updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseListModelDomainCIDBUACBFVM = listModel;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.updateListModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
        return await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelNetworkDatabase(), updateListModelToNetworkDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
      return await ReadyModelNetworkDatabaseFVM.updateListModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelNetworkDatabase(), updateListModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }
  
  @protected
  Future<Response<BaseTypeParameter,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVM(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseModelNetworkDatabase == null) {
      return throw Exception("null converterToBaseModelNetworkDatabase");
    }
    ConverterToBaseModelNetworkDatabase ctmlorn = converterToBaseModelNetworkDatabase.cloneObject();
    BaseModelDomain model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter].cloneObject();
    if(deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM != null) {
      DeleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM cidbuacbfvm = deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseModelDomainCIDBUACBFVM = model;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.deleteModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseModelDomainCTMLOrN = model;
        return await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseModelNetworkDatabase(), deleteModelToNetworkDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseModelDomainCTMLOrN = model;
      return await ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseModelNetworkDatabase(), deleteModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  @protected
  Future<Response<BaseTypeParameter,BaseException>> baseDeleteListModelToNetworkDatabaseThereIsParameterFVM(
      DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource)
  async {
    if(converterToBaseListModelNetworkDatabase == null) {
      return throw Exception("null converterToBaseListModelNetworkDatabase");
    }
    ConverterToBaseListModelNetworkDatabase ctmlorn = converterToBaseListModelNetworkDatabase.cloneObject();
    BaseListModelDomain listModel = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNetworkDatabaseThereIsParameter].cloneObject();
    if(deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM != null) {
      DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM cidbuacbfvm = deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseListModelDomainCIDBUACBFVM = listModel;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.deleteListModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
        return await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelNetworkDatabase(), deleteListModelToNetworkDatabaseThereIsParameterDataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmlorn.setBaseListModelDomainCTMLOrN = listModel;
      return await ReadyModelNetworkDatabaseFVM.deleteListModelToNetworkDatabaseThereIsParameterFVM(ctmlorn.toBaseListModelNetworkDatabase(), deleteListModelToNetworkDatabaseThereIsParameterDataSource);
    }
  }

  /// End ReadyModelNetworkDatabaseFVM

  /// Start ReadyListModelDomainForLNDatabaseFVM
  ///
  Response<BaseTypeParameter, BaseException> baseInsertModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.insertModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> baseInsertListModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.insertListModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> baseUpdateModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.updateModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> baseUpdateListModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.updateListModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> baseDeleteModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.deleteModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> baseDeleteListModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.deleteListModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> baseInsertModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.insertModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> baseInsertListModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.insertListModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> baseUpdateModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.updateModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> baseUpdateListModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.updateListModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> baseDeleteModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.deleteModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> baseDeleteListModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.deleteListModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  /// End ReadyListModelDomainForLNDatabaseFVM
  
  /// Start Methods Base/EnumTypeParameter **/

  void setBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(
      BaseTypeParameter baseTypeParameter,
      EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM operation)
  {
    _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[operation] = baseTypeParameter;
  }

  void setBaseIteratorForEnum(
      BaseIterator baseIterator,
      Enum operation)
  {
    mapEnumAndBaseIterator[operation] = baseIterator;
  }

  void setEnumTypeParameterForIteratorForListModelLNDatabase(
      EnumTypeParameter enumTypeParameter,
      EnumTypeParameterForIteratorForListModelLNDatabaseVM operation)
  {
    mapEnumTypeParameterForIteratorForListModelLNDatabaseVMAndEnumTypeParameter[operation] = enumTypeParameter;
  }

  BaseTypeParameter getBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM operation)
  {
    return _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromLNDatabaseAndGetListFromLNDatabase[operation];
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