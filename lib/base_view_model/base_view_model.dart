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
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/model_domain_notification_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/model_local_database_for_one_entry_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_type_parameter_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_iterator_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_iterator_for_base_list_model_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_model_domain_notification_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_model_local_database_for_one_entry_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_model_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_model_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:uuid/uuid.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends BaseModelDomain,
                              Y extends BaseListModelDomain<T>>
{
  /* Constructor */
  final List<EnumBaseModelDomainObjectOperationViewModel> _listEnumBaseModelDomainObjectOperationViewModel;
  final List<EnumBaseListModelDomainObjectOperationViewModel> _listEnumBaseListModelDomainObjectOperationViewModel;
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* Types */
  final Type _typeBaseModelDomain = T;

  /* Maps */
  final Map<EnumBaseTypeParameterObjectOperationViewModel,BaseTypeParameter> _mapEnumBaseTypeParameterObjectOperationViewModelAndBaseTypeParameter = {
    EnumBaseTypeParameterObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterObjectOperationViewModel.getModelFromLocalDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterObjectOperationViewModel.getModelFromNetworkDatabaseThereIsParameter : BoolTypeParameter(false),
  };
  final Map<EnumTypeParameterObjectOperationViewModel,EnumTypeParameter> _mapEnumTypeParameterObjectOperationViewModelAndEnumTypeParameter = {
    EnumTypeParameterObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameter : EnumTypeParameter(
        EnumTypeParameterObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameter
    ),
    EnumTypeParameterObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameter : EnumTypeParameter(
        EnumTypeParameterObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameter
    ),
  };
  Map<EnumBaseModelDomainObjectOperationViewModel,T> _mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain;
  Map<EnumBaseModelDomainObjectOperationViewModel,StreamController<T>> _mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain;
  Map<EnumBaseListModelDomainObjectOperationViewModel,Y> _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain;
  Map<EnumBaseListModelDomainObjectOperationViewModel,StreamController<List<T>>> _mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain;

  /* Maps For Iterator */
  Map<Enum,BaseIterator> _mapEnumAndBaseIteratorForSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIterator = {};

  BaseViewModel(
      this._listEnumBaseModelDomainObjectOperationViewModel,
      this._listEnumBaseListModelDomainObjectOperationViewModel,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain
      );

  BaseViewModel.forIterator(
      this._listEnumBaseModelDomainObjectOperationViewModel,
      this._listEnumBaseListModelDomainObjectOperationViewModel,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      this._mapEnumAndBaseIteratorForSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIterator
      );

  void dispose() {
    _mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain = null;
    _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain = null;
    _dispose(_mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain);
    _dispose(_mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain);
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
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseForOneEntryThereIsParameterFVM(ModelLocalDatabaseForOneEntryDataSource modelLocalDatabaseForOneEntryDataSource) {
    return ReadyModelLocalDatabaseForOneEntryFVM.insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(this, modelLocalDatabaseForOneEntryDataSource);
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseForOneEntryFVM(ModelLocalDatabaseForOneEntryDataSource modelLocalDatabaseForOneEntryDataSource) {
    return ReadyModelLocalDatabaseForOneEntryFVM.deleteModelToLocalDatabaseForOneEntryFVM(modelLocalDatabaseForOneEntryDataSource);
  }

  /// End ReadyModelLocalDatabaseForOneEntryFVM

  /// Start ReadyIteratorForBaseListModelLNDatabaseFVM
  ///
  @protected
  Response<bool,BaseException> baseCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM() {
    return ReadyIteratorForBaseListModelLNDatabaseFVM.callToMethodSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIteratorFVM(
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumTypeParameterObjectOperationViewModelAndEnumTypeParameter[EnumTypeParameterObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameter],
        _mapEnumAndBaseIteratorForSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIterator);
  }

  @protected
  Response<bool,BaseException> baseCallToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM() {
    return ReadyIteratorForBaseListModelLNDatabaseFVM.callToMethodSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIteratorFVM(
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumTypeParameterObjectOperationViewModelAndEnumTypeParameter[EnumTypeParameterObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameter],
        _mapEnumAndBaseIteratorForSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIterator);
  }

  /// End ReadyIteratorForBaseListModelLNDatabaseFVM

  /// Start ReadyModelLocalDatabaseFVM
  ///
  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource) {
    return ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
        getListModelFromLocalDatabaseDataSource,
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource) {
    return ReadyModelLocalDatabaseFVM.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromLocalDatabaseThereIsParameterDataSource, 
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumBaseTypeParameterObjectOperationViewModelAndBaseTypeParameter[EnumBaseTypeParameterObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource) {
    return ReadyModelLocalDatabaseFVM.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
        this,
        getModelFromLocalDatabaseThereIsParameterDataSource,
        _mapEnumBaseTypeParameterObjectOperationViewModelAndBaseTypeParameter[EnumBaseTypeParameterObjectOperationViewModel.getModelFromLocalDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToLocalDatabaseThereIsParameterFVM(InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource) {
    return ReadyModelLocalDatabaseFVM.insertModelToLocalDatabaseThereIsParameterFVM(
        this,
        insertModelToLocalDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToLocalDatabaseThereIsParameterFVM(UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource) {
    return ReadyModelLocalDatabaseFVM.updateModelToLocalDatabaseThereIsParameterFVM(
        this,
        updateModelToLocalDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToLocalDatabaseThereIsParameterFVM(DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource) {
    return ReadyModelLocalDatabaseFVM.deleteModelToLocalDatabaseThereIsParameterFVM(
        this,
        deleteModelToLocalDatabaseThereIsParameterDataSource
    );
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
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource) 
  {
    return ReadyModelNetworkDatabaseFVM.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        getListModelFromNetworkDatabaseThereIsParameterDataSource,
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumBaseTypeParameterObjectOperationViewModelAndBaseTypeParameter[EnumBaseTypeParameterObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseCallToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource)
  {
    return ReadyModelNetworkDatabaseFVM.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        this,
        getModelFromNetworkDatabaseThereIsParameterDataSource,
        _mapEnumBaseTypeParameterObjectOperationViewModelAndBaseTypeParameter[EnumBaseTypeParameterObjectOperationViewModel.getModelFromNetworkDatabaseThereIsParameter]);
  }

  @protected
  Future<Response<bool,BaseException>> baseInsertModelToNetworkDatabaseThereIsParameterFVM(InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource) {
    return ReadyModelNetworkDatabaseFVM.insertModelToNetworkDatabaseThereIsParameterFVM(
        this,
        insertModelToNetworkDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseUpdateModelToNetworkDatabaseThereIsParameterFVM(UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource) {
    return ReadyModelNetworkDatabaseFVM.updateModelToNetworkDatabaseThereIsParameterFVM(
        this,
        updateModelToNetworkDatabaseThereIsParameterDataSource
    );
  }

  @protected
  Future<Response<bool,BaseException>> baseDeleteModelToNetworkDatabaseThereIsParameterFVM(DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource) {
    return ReadyModelNetworkDatabaseFVM.deleteModelToNetworkDatabaseThereIsParameterFVM(
        this,
        deleteModelToNetworkDatabaseThereIsParameterDataSource
    );
  }

  /// End ReadyModelNetworkDatabaseFVM

  /// Start ReadyModelDomainNotificationFVM
  ///
  Future<Response<bool,BaseException>> basePushNotificationToZonedScheduleThereIsParameterFVM(ModelDomainNotificationDataSource notificationModelDataSource) {
    return ReadyModelDomainNotificationFVM.pushNotificationToZonedScheduleThereIsParameterFVM(this, notificationModelDataSource);
  }

  Future<Response<bool,BaseException>> basePushNotificationToShowThereIsParameterFVM(ModelDomainNotificationDataSource notificationModelDataSource) {
    return ReadyModelDomainNotificationFVM.pushNotificationToShowThereIsParameterFVM(this, notificationModelDataSource);
  }

  Future<Response<bool,BaseException>> baseCancelNotificationThereIsParameterFVM(ModelDomainNotificationDataSource notificationModelDataSource) {
    return ReadyModelDomainNotificationFVM.cancelNotificationThereIsParameterFVM(this, notificationModelDataSource);
  }
  /// End ReadyModelDomainNotificationFVM

  /// Start ReadyListModelDomainForLNDatabaseFVM
  ///
  Response<bool, BaseException> baseInsertModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.insertModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<bool, BaseException> baseUpdateModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.updateModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<bool, BaseException> baseDeleteModelToListModelDomainForLocalDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.deleteModelToListModelDomainForLocalDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<bool, BaseException> baseInsertModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.insertModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<bool, BaseException> baseUpdateModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.updateModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<bool, BaseException> baseDeleteModelToListModelDomainForNetworkDatabaseFVM() {
    return ReadyListModelDomainForLNDatabaseFVM.deleteModelToListModelDomainForNetworkDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  /// End ReadyListModelDomainForLNDatabaseFVM

  /* End Methods From ReadyClassesFVM */
  
  /* Start Methods Base/EnumTypeParameter */

  void setBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(
      BaseTypeParameter baseTypeParameter,
      EnumBaseTypeParameterObjectOperationViewModel operation)
  {
    _mapEnumBaseTypeParameterObjectOperationViewModelAndBaseTypeParameter[operation] = baseTypeParameter;
  }

  void setEnumTypeParameterForGetListLNDatabase(
      EnumTypeParameter enumTypeParameter,
      EnumTypeParameterObjectOperationViewModel operation)
  {
    _mapEnumTypeParameterObjectOperationViewModelAndEnumTypeParameter[operation] = enumTypeParameter;
  }

  @protected
  BaseTypeParameter getBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(
      EnumBaseTypeParameterObjectOperationViewModel operation)
  {
    return _mapEnumBaseTypeParameterObjectOperationViewModelAndBaseTypeParameter[operation];
  }

  @protected
  EnumTypeParameter getEnumTypeParameterForGetListLNDatabase(EnumTypeParameterObjectOperationViewModel operation) {
    return _mapEnumTypeParameterObjectOperationViewModelAndEnumTypeParameter[operation];
  }

  @protected
  BaseListModelDomain getBaseListModelDomain(EnumBaseListModelDomainObjectOperationViewModel operation) {
    return _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[operation];
  }

  /* End Methods Base/EnumTypeParameter */

  /* Start Methods Model */

  T getModelDomain(EnumBaseModelDomainObjectOperationViewModel operation) {
    return _getMapEnumOperationViewModelAndBaseModelDomain[operation];
  }

  void setModelDomain(T newModel,EnumBaseModelDomainObjectOperationViewModel operation) {
    _getMapEnumOperationViewModelAndBaseModelDomain[operation] = newModel;
  }

  Future<T> getFutureModelDomain(EnumBaseModelDomainObjectOperationViewModel operation) async {
    return _getMapEnumOperationViewModelAndBaseModelDomain[operation];
  }

  Stream<T> getStreamModelDomain(EnumBaseModelDomainObjectOperationViewModel operation) {
    return _getMapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain[operation].stream;
  }
  
  void notifyStreamModelDomain(EnumBaseModelDomainObjectOperationViewModel operation) {
    _getMapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain[operation].add(
        _getMapEnumOperationViewModelAndBaseModelDomain[operation]
    );
  }

  @protected
  set setParameterModelDomainNamedUniqueId(EnumBaseModelDomainObjectOperationViewModel operation) {
    _getMapEnumOperationViewModelAndBaseModelDomain[operation].setUniqueId = const Uuid().v1();
  }

  /* End Methods Model */

  /* Start Methods ListModel */

  List<T> getListModelDomain(EnumBaseListModelDomainObjectOperationViewModel operation)  {
    return _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[operation].getListModelDomain;
  }

  void setListModelDomain(List<T> newModel,EnumBaseListModelDomainObjectOperationViewModel operation) {
    _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[operation].setListModelDomain = newModel;
  }

  Future<List<T>> getFutureListModelDomain(EnumBaseListModelDomainObjectOperationViewModel operation) async {
    return _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[operation].getListModelDomain;
  }
  
  Stream<List<T>> getStreamListModelDomain(EnumBaseListModelDomainObjectOperationViewModel operation) {
    return _getMapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain[operation].stream;
  }

  void notifyStreamListModelDomain(EnumBaseListModelDomainObjectOperationViewModel operation) {
    _getMapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain[operation].add(
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[operation].getListModelDomain
    );
  }

  /* End Methods ListModel */
  
  Map<EnumBaseModelDomainObjectOperationViewModel,T> get _getMapEnumOperationViewModelAndBaseModelDomain {
    if(_mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain != null) {
      return _mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain;
    }
    _mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain = _creationAndGetMapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain();
    return _mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain;
  }

  Map<EnumBaseModelDomainObjectOperationViewModel,StreamController<T>> get _getMapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain {
    if(_mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain != null) {
      return _mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain;
    }
    _mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain = _creationAndGetMapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain();
    return _mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain;
  }

  Map<EnumBaseListModelDomainObjectOperationViewModel,Y> get _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain {
    if(_mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain != null) {
      return _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain;
    }
    _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain = _creationAndGetMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain();
    return _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain;
  }

  Map<EnumBaseListModelDomainObjectOperationViewModel,StreamController<List<T>>> get _getMapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain {
    if(_mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain != null) {
      return _mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain;
    }
    _mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain = _creationAndGetMapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain();
    return _mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain;
  }

  Map<EnumBaseModelDomainObjectOperationViewModel,T> _creationAndGetMapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain() {
    if(_listEnumBaseModelDomainObjectOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumBaseModelDomainObjectOperationViewModel,T> map = {};
    for(EnumBaseModelDomainObjectOperationViewModel viewModelOperation in _listEnumBaseModelDomainObjectOperationViewModel) {
      map[viewModelOperation] = _initCreatorBaseModelDomain();
    }
    return map;
  }

  Map<EnumBaseModelDomainObjectOperationViewModel,StreamController<T>> _creationAndGetMapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain() {
    if(_listEnumBaseModelDomainObjectOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumBaseModelDomainObjectOperationViewModel,StreamController<T>> map = {};
    for(EnumBaseModelDomainObjectOperationViewModel viewModelOperation in _listEnumBaseModelDomainObjectOperationViewModel) {
      map[viewModelOperation] = StreamController<T>.broadcast();
    }
    return map;
  }
  
  Map<EnumBaseListModelDomainObjectOperationViewModel,Y> _creationAndGetMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain() {
    if(_listEnumBaseListModelDomainObjectOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumBaseListModelDomainObjectOperationViewModel,Y> map = {};
    for(EnumBaseListModelDomainObjectOperationViewModel viewModelOperation in _listEnumBaseListModelDomainObjectOperationViewModel) {
      map[viewModelOperation] = _initCreatorBaseListModelDomain();
    }
    return map;
  }

  Map<EnumBaseListModelDomainObjectOperationViewModel,StreamController<List<T>>> _creationAndGetMapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain() {
    if(_listEnumBaseListModelDomainObjectOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumBaseListModelDomainObjectOperationViewModel,StreamController<List<T>>> map = {};
    for(EnumBaseListModelDomainObjectOperationViewModel viewModelOperation in _listEnumBaseListModelDomainObjectOperationViewModel) {
      map[viewModelOperation] = StreamController<List<T>>.broadcast();
    }
    return map;
  }

  void _dispose(Map<Enum,StreamController> map) {
    if(map.values.isEmpty) {
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