import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_delete_list_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_delete_list_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_delete_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_delete_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_get_list_model_from_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_get_list_model_from_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_get_model_from_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_get_model_from_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_insert_list_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_insert_list_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_insert_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_insert_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_update_list_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_update_list_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_update_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/base_update_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_delete_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_delete_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_delete_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_get_list_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_insert_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_insert_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_insert_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_insert_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_update_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_update_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_update_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/i_update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:meta/meta.dart';

/// This class is necessary for accessing the database,
/// the network (DataSource) and also before accessing the database, the network,
/// check the data and calculate if necessary in (FBDS),
/// also if there is a Stream in the Service,
/// it can pass it for control to the "ModelQThereIsStateViewModel" class if it is necessary
abstract base class BaseModelQNamedServiceViewModel<T extends BaseModel,
    Y extends BaseListModel<T>> {
  ///   Example Using:
  ///
  ///   @nonVirtual
  ///   @protected
  ///   @override
  ///   Object get iModelQNamedServiceDataSource => this;
  @protected
  Object get iModelQNamedServiceDataSource;

  // Start getListNP 2
  /// The purpose of this method is to take data from the Service
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNP() {
    return _getListModelFromNamedServiceNPUsingFBDS<Object>(
        iModelQNamedServiceDataSource
            as IGetListModelFromNamedServiceNPDataSource<Y>,
        null,
        null);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Y?>
      getListModelFromNamedServiceNPUsingFBDS<X extends Object>(
          BaseGetListModelFromNamedServiceNPFBDS<Y, X>
              baseGetListModelFromNamedServiceNPFBDS,
          X parameter) {
    return _getListModelFromNamedServiceNPUsingFBDS<X>(
        iModelQNamedServiceDataSource
            as IGetListModelFromNamedServiceNPDataSource<Y>,
        baseGetListModelFromNamedServiceNPFBDS,
        parameter);
  }
  // End getListNP 2

  // Start getListParameterNamed 2
  /// The purpose of this method is to take data from the Service
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamed<X extends Object>(
      X parameter) {
    return _getListModelFromNamedServiceParameterNamedUsingFBDS<X>(
        iModelQNamedServiceDataSource as IGetListModelFromNamedServiceParameterNamedDataSource<Y, X>,
        null,
        parameter);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Y?>
      getListModelFromNamedServiceParameterNamedUsingFBDS<X extends Object>(
          BaseGetListModelFromNamedServiceParameterNamedFBDS<Y, X>
              getModelFromNamedServiceParameterNamedFBDS,
          X parameter) {
    return _getListModelFromNamedServiceParameterNamedUsingFBDS<X>(
        iModelQNamedServiceDataSource as IGetListModelFromNamedServiceParameterNamedDataSource<Y, X>,
        getModelFromNamedServiceParameterNamedFBDS,
        parameter);
  }
  // End getListParameterNamed 2

  // Start getNP 2
  /// The purpose of this method is to take data from the Service
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNP() {
    return _getModelFromNamedServiceNPUsingFBDS<Object>(
        iModelQNamedServiceDataSource as IGetModelFromNamedServiceNPDataSource<T>,
        null,
        null);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNPUsingFBDS<X extends Object>(
      BaseGetModelFromNamedServiceNPFBDS<T,X> getModelFromNamedServiceNPFBDS,
      X parameter) {
    return _getModelFromNamedServiceNPUsingFBDS<X>(
        iModelQNamedServiceDataSource as IGetModelFromNamedServiceNPDataSource<T>,
        getModelFromNamedServiceNPFBDS,
        parameter);
  }
  // End getNP 2

  // Start getParameterNamed 2
  /// The purpose of this method is to take data from the Service
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamed<X extends Object>(
      X parameter) {
    return _getModelFromNamedServiceParameterNamedUsingFBDS<X>(
        iModelQNamedServiceDataSource
            as IGetModelFromNamedServiceParameterNamedDataSource<T, X>,
        null,
        parameter);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamedUsingFBDS<X extends Object>(
      BaseGetModelFromNamedServiceParameterNamedFBDS<T,X>
          getModelFromNamedServiceParameterNamedFBDS,
      X parameter) {
    return _getModelFromNamedServiceParameterNamedUsingFBDS<X>(
        iModelQNamedServiceDataSource as IGetModelFromNamedServiceParameterNamedDataSource<T, X>,
        getModelFromNamedServiceParameterNamedFBDS,
        parameter);
  }
  // End getParameterNamed 2

  // Start insertNP 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> insertModelToNamedServiceNP<X extends Object>() {
    return _insertModelToNamedServiceNPUsingFBDS<X, Object>(
        iModelQNamedServiceDataSource as IInsertModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> insertModelToNamedServiceNPUsingFBDS<X extends Object, C extends Object>(
      BaseInsertModelToNamedServiceNPFBDS<X, C> insertModelToNamedServiceNPFBDS,
      C parameter) {
    return _insertModelToNamedServiceNPUsingFBDS<X, C>(
        iModelQNamedServiceDataSource as IInsertModelToNamedServiceNPDataSource<X>,
        insertModelToNamedServiceNPFBDS,
        parameter);
  }
  // End insertNP 2

  // Start insertParameterNamed 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> insertModelToNamedServiceParameterNamed<X extends Object, C extends Object>(
      C parameter)
  {
    return _insertModelToNamedServiceParameterNamedUsingFBDS<X,C>(
        iModelQNamedServiceDataSource as IInsertModelToNamedServiceParameterNamedDataSource<X,C>,
        null,
        parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?>
      insertModelToNamedServiceParameterNamedUsingFBDS<X extends Object, C extends Object>(
          BaseInsertModelToNamedServiceParameterNamedFBDS<X, C> insertModelToNamedServiceParameterNamedFBDS,
          C parameter) {
    return _insertModelToNamedServiceParameterNamedUsingFBDS<X, C>(
        iModelQNamedServiceDataSource as IInsertModelToNamedServiceParameterNamedDataSource<X,C>,
        insertModelToNamedServiceParameterNamedFBDS,
        parameter);
  }
  // End insertParameterNamed 2

  // Start insertListNP 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> insertListModelToNamedServiceNP<X extends Object>() {
    return _insertListModelToNamedServiceNPUsingFBDS<X, Object>(
        iModelQNamedServiceDataSource as IInsertListModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> insertListModelToNamedServiceNPUsingFBDS<X extends Object, C extends Object>(
      BaseInsertListModelToNamedServiceNPFBDS<X, C> insertListModelToNamedServiceNPFBDS,
      C parameter) {
    return _insertListModelToNamedServiceNPUsingFBDS<X, C>(
        iModelQNamedServiceDataSource as IInsertListModelToNamedServiceNPDataSource<X>,
        insertListModelToNamedServiceNPFBDS,
        parameter);
  }
  // End insertListNP 2

  // Start insertListParameterNamed 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> insertListModelToNamedServiceParameterNamed<X extends Object,C extends Object>(C parameter) {
    return _insertListModelToNamedServiceParameterNamedUsingFBDS<X,C>(
        iModelQNamedServiceDataSource as IInsertListModelToNamedServiceParameterNamedDataSource<X,C>,
        null,
        parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?>
      insertListModelToNamedServiceParameterNamedUsingFBDS<X extends Object, C extends Object>(
          BaseInsertListModelToNamedServiceParameterNamedFBDS<X, C> insertListModelToNamedServiceParameterNamedFBDS,
          C parameter) {
    return _insertListModelToNamedServiceParameterNamedUsingFBDS<X, C>(
        iModelQNamedServiceDataSource as IInsertListModelToNamedServiceParameterNamedDataSource<X,C>,
        insertListModelToNamedServiceParameterNamedFBDS,
        parameter);
  }
  // End insertListParameterNamed 2

  // Start updateNP 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> updateModelToNamedServiceNP<X extends Object>() {
    return _updateModelToNamedServiceNPUsingFBDS<X, Object>(
        iModelQNamedServiceDataSource
            as IUpdateModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> updateModelToNamedServiceNPUsingFBDS<X extends Object, C extends Object>(
      BaseUpdateModelToNamedServiceNPFBDS<X, C> updateModelToNamedServiceNPFBDS,
      C parameter) {
    return _updateModelToNamedServiceNPUsingFBDS<X, C>(
        iModelQNamedServiceDataSource
            as IUpdateModelToNamedServiceNPDataSource<X>,
        updateModelToNamedServiceNPFBDS,
        parameter);
  }
  // End updateNP 2

  // Start updateParameterNamed 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> updateModelToNamedServiceParameterNamed<X extends Object, C extends Object>(C parameter) {
    return _updateModelToNamedServiceParameterNamedUsingFBDS<X,C>(
        iModelQNamedServiceDataSource as IUpdateModelToNamedServiceParameterNamedDataSource<X,C>,
        null,
        parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?>
      updateModelToNamedServiceParameterNamedUsingFBDS<X extends Object, C extends Object>(
          BaseUpdateModelToNamedServiceParameterNamedFBDS<X, C> updateModelToNamedServiceParameterNamedFBDS,
          C parameter) {
    return _updateModelToNamedServiceParameterNamedUsingFBDS<X, C>(
        iModelQNamedServiceDataSource as IUpdateModelToNamedServiceParameterNamedDataSource<X,C>,
        updateModelToNamedServiceParameterNamedFBDS,
        parameter);
  }
  // End updateParameterNamed 2

  // Start updateListNP 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> updateListModelToNamedServiceNP<X extends Object>() {
    return _updateListModelToNamedServiceNPUsingFBDS<X, Object>(
        iModelQNamedServiceDataSource as IUpdateListModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> updateListModelToNamedServiceNPUsingFBDS<X extends Object, C extends Object>(
      BaseUpdateListModelToNamedServiceNPFBDS<X, C>updateListModelToNamedServiceNPFBDS,
      C parameter) {
    return _updateListModelToNamedServiceNPUsingFBDS<X, C>(
        iModelQNamedServiceDataSource as IUpdateListModelToNamedServiceNPDataSource<X>,
        updateListModelToNamedServiceNPFBDS,
        parameter);
  }
  // End updateListNP 2

  // Start updateListParameterNamed 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> updateListModelToNamedServiceParameterNamed<
      X extends Object, C extends Object>(C parameter) {
    return _updateListModelToNamedServiceParameterNamedUsingFBDS<X,C>(
        iModelQNamedServiceDataSource as IUpdateListModelToNamedServiceParameterNamedDataSource<X,C>,
        null,
        parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?>
      updateListModelToNamedServiceParameterNamedUsingFBDS<X extends Object, C extends Object>(
          BaseUpdateListModelToNamedServiceParameterNamedFBDS<X, C>updateListModelToNamedServiceParameterNamedFBDS,
          C parameter) {
    return _updateListModelToNamedServiceParameterNamedUsingFBDS<X, C>(
        iModelQNamedServiceDataSource as IUpdateListModelToNamedServiceParameterNamedDataSource<X,C>,
        updateListModelToNamedServiceParameterNamedFBDS,
        parameter);
  }
  // End updateListParameterNamed 2

  // Start deleteNP 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> deleteModelToNamedServiceNP<X extends Object>() {
    return _deleteModelToNamedServiceNPUsingFBDS<X, Object>(
        iModelQNamedServiceDataSource as IDeleteModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> deleteModelToNamedServiceNPUsingFBDS<X extends Object, C extends Object>(
      BaseDeleteModelToNamedServiceNPFBDS<X, C> deleteModelToNamedServiceNPFBDS,
      C parameter) {
    return _deleteModelToNamedServiceNPUsingFBDS<X, C>(
        iModelQNamedServiceDataSource as IDeleteModelToNamedServiceNPDataSource<X>,
        deleteModelToNamedServiceNPFBDS,
        parameter);
  }
  // End deleteNP 2

  // Start deleteParameterNamed 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> deleteModelToNamedServiceParameterNamed<X extends Object, C extends Object>(C parameter) {
    return _deleteModelToNamedServiceParameterNamedUsingFBDS<X,C>(
        iModelQNamedServiceDataSource as IDeleteModelToNamedServiceParameterNamedDataSource<X,C>,
        null,
        parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> deleteModelToNamedServiceParameterNamedUsingFBDS<X extends Object, C extends Object>(
      BaseDeleteModelToNamedServiceParameterNamedFBDS<X, C> deleteModelToNamedServiceParameterNamedFBDS,
      C parameter) {
    return _deleteModelToNamedServiceParameterNamedUsingFBDS<X, C>(
        iModelQNamedServiceDataSource as IDeleteModelToNamedServiceParameterNamedDataSource<X,C>,
        deleteModelToNamedServiceParameterNamedFBDS,
        parameter);
  }
  // End deleteParameterNamed 2

  // Start deleteListNP 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> deleteListModelToNamedServiceNP<X extends Object>() {
    return _deleteListModelToNamedServiceNPUsingFBDS<X, Object>(
        iModelQNamedServiceDataSource as IDeleteListModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> deleteListModelToNamedServiceNPUsingFBDS<X extends Object, C extends Object>(
      BaseDeleteListModelToNamedServiceNPFBDS<X, C>deleteListModelToNamedServiceNPFBDS,
      C parameter) {
    return _deleteListModelToNamedServiceNPUsingFBDS<X, C>(
        iModelQNamedServiceDataSource as IDeleteListModelToNamedServiceNPDataSource<X>,
        deleteListModelToNamedServiceNPFBDS,
        parameter);
  }
  // End deleteListNP 2

  // Start deleteListParameterNamed 2
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> deleteListModelToNamedServiceParameterNamed<X extends Object, C extends Object>(C parameter) {
    return _deleteListModelToNamedServiceParameterNamedUsingFBDS<X,C>(
        iModelQNamedServiceDataSource as IDeleteListModelToNamedServiceParameterNamedDataSource<X,C>,
        null,
        parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> deleteListModelToNamedServiceParameterNamedUsingFBDS<X extends Object, C extends Object>(
      BaseDeleteListModelToNamedServiceParameterNamedFBDS<X, C> deleteListModelToNamedServiceParameterNamedFBDS,
      C parameter) {
    return _deleteListModelToNamedServiceParameterNamedUsingFBDS<X, C>(
        iModelQNamedServiceDataSource as IDeleteListModelToNamedServiceParameterNamedDataSource<X,C>,
        deleteListModelToNamedServiceParameterNamedFBDS,
        parameter);
  }
  // End deleteListParameterNamed 2

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Y?> _getListModelFromNamedServiceNPUsingFBDS<
          X extends Object>(
      IGetListModelFromNamedServiceNPDataSource<Y>
          iGetListModelFromNamedServiceNPDataSource,
      BaseGetListModelFromNamedServiceNPFBDS<Y, X>?
          baseGetListModelFromNamedServiceNPFBDS,
      X? parameter) async {
    if (baseGetListModelFromNamedServiceNPFBDS == null) {
      return await iGetListModelFromNamedServiceNPDataSource
          .getListModelFromNamedServiceNPDS();
    }
    final response = baseGetListModelFromNamedServiceNPFBDS
        .getListModelFromNamedServiceNPFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iGetListModelFromNamedServiceNPDataSource
        .getListModelFromNamedServiceNPDS();
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Y?>
      _getListModelFromNamedServiceParameterNamedUsingFBDS<
              X extends Object>(
          IGetListModelFromNamedServiceParameterNamedDataSource<Y, X>
              iGetListModelFromNamedServiceParameterNamedDataSource,
          BaseGetListModelFromNamedServiceParameterNamedFBDS<Y, X>?
              baseGetListModelFromNamedServiceParameterNamedFBDS,
          X? parameter) async {
    if (baseGetListModelFromNamedServiceParameterNamedFBDS == null) {
      return await iGetListModelFromNamedServiceParameterNamedDataSource
          .getListModelFromNamedServiceParameterNamedDS(parameter);
    }
    final response = baseGetListModelFromNamedServiceParameterNamedFBDS
        .getListModelFromNamedServiceParameterNamedFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iGetListModelFromNamedServiceParameterNamedDataSource
        .getListModelFromNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<T?>
      _getModelFromNamedServiceNPUsingFBDS<X extends Object>(
          IGetModelFromNamedServiceNPDataSource<T>
              iGetModelFromNamedServiceNPDataSource,
          BaseGetModelFromNamedServiceNPFBDS<T, X>? baseGetModelFromNamedServiceNPFBDS,
          X? parameter) async {
    if (baseGetModelFromNamedServiceNPFBDS == null) {
      return await iGetModelFromNamedServiceNPDataSource
          .getModelFromNamedServiceNPDS();
    }
    final response = baseGetModelFromNamedServiceNPFBDS
        .getModelFromNamedServiceNPFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iGetModelFromNamedServiceNPDataSource
        .getModelFromNamedServiceNPDS();
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<T?> _getModelFromNamedServiceParameterNamedUsingFBDS<
          X extends Object>(
      IGetModelFromNamedServiceParameterNamedDataSource<T, X>
          iGetModelFromNamedServiceParameterNamedDataSource,
      BaseGetModelFromNamedServiceParameterNamedFBDS<T, X>?
          baseGetModelFromNamedServiceParameterNamedFBDS,
      X? parameter) async {
    if (baseGetModelFromNamedServiceParameterNamedFBDS == null) {
      return await iGetModelFromNamedServiceParameterNamedDataSource
          .getModelFromNamedServiceParameterNamedDS(parameter);
    }
    final response = baseGetModelFromNamedServiceParameterNamedFBDS
        .getModelFromNamedServiceParameterNamedFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iGetModelFromNamedServiceParameterNamedDataSource
        .getModelFromNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?> _insertModelToNamedServiceNPUsingFBDS<
          X extends Object, C extends Object>(
      IInsertModelToNamedServiceNPDataSource<X>
          iInsertModelToNamedServiceNPDataSource,
      BaseInsertModelToNamedServiceNPFBDS<X, C>? baseInsertModelToNamedServiceNPFBDS,
      C? parameter) async {
    if (baseInsertModelToNamedServiceNPFBDS == null) {
      return await iInsertModelToNamedServiceNPDataSource
          .insertModelToNamedServiceNPDS();
    }
    final response = baseInsertModelToNamedServiceNPFBDS
        .insertModelToNamedServiceNPFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iInsertModelToNamedServiceNPDataSource
        .insertModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?>
      _insertModelToNamedServiceParameterNamedUsingFBDS<
              X extends Object, C extends Object>(
          IInsertModelToNamedServiceParameterNamedDataSource<X,C>
              iInsertModelToNamedServiceParameterNamedDataSource,
          BaseInsertModelToNamedServiceParameterNamedFBDS<X,C>?
              baseInsertModelToNamedServiceParameterNamedFBDS,
          C? parameter) async {
    if (baseInsertModelToNamedServiceParameterNamedFBDS == null) {
      return await iInsertModelToNamedServiceParameterNamedDataSource
          .insertModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = baseInsertModelToNamedServiceParameterNamedFBDS
        .insertModelToNamedServiceParameterNamedFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iInsertModelToNamedServiceParameterNamedDataSource
        .insertModelToNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?> _insertListModelToNamedServiceNPUsingFBDS<
          X extends Object, C extends Object>(
      IInsertListModelToNamedServiceNPDataSource<X>
          iInsertListModelToNamedServiceNPDataSource,
      BaseInsertListModelToNamedServiceNPFBDS<X, C>?
          baseInsertListModelToNamedServiceNPFBDS,
      C? parameter) async {
    if (baseInsertListModelToNamedServiceNPFBDS == null) {
      return await iInsertListModelToNamedServiceNPDataSource
          .insertListModelToNamedServiceNPDS();
    }
    final response = baseInsertListModelToNamedServiceNPFBDS
        .insertListModelToNamedServiceNPFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iInsertListModelToNamedServiceNPDataSource
        .insertListModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?>
      _insertListModelToNamedServiceParameterNamedUsingFBDS<
              X extends Object, C extends Object>(
          IInsertListModelToNamedServiceParameterNamedDataSource<X,C>
              iInsertListModelToNamedServiceParameterNamedDataSource,
          BaseInsertListModelToNamedServiceParameterNamedFBDS<X, C>?
              baseInsertListModelToNamedServiceParameterNamedFBDS,
          C? parameter) async {
    if (baseInsertListModelToNamedServiceParameterNamedFBDS == null) {
      return await iInsertListModelToNamedServiceParameterNamedDataSource
          .insertListModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = baseInsertListModelToNamedServiceParameterNamedFBDS
        .insertListModelToNamedServiceParameterNamedFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iInsertListModelToNamedServiceParameterNamedDataSource
        .insertListModelToNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?> _updateModelToNamedServiceNPUsingFBDS<
          X extends Object, C extends Object>(
      IUpdateModelToNamedServiceNPDataSource<X>
          iUpdateModelToNamedServiceNPDataSource,
      BaseUpdateModelToNamedServiceNPFBDS<X, C>? baseUpdateModelToNamedServiceNPFBDS,
      C? parameter) async {
    if (baseUpdateModelToNamedServiceNPFBDS == null) {
      return await iUpdateModelToNamedServiceNPDataSource
          .updateModelToNamedServiceNPDS();
    }
    final response = baseUpdateModelToNamedServiceNPFBDS
        .updateModelToNamedServiceNPFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iUpdateModelToNamedServiceNPDataSource
        .updateModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?>
      _updateModelToNamedServiceParameterNamedUsingFBDS<X extends Object, C extends Object>(
          IUpdateModelToNamedServiceParameterNamedDataSource<X,C>
              iUpdateModelToNamedServiceParameterNamedDataSource,
          BaseUpdateModelToNamedServiceParameterNamedFBDS<X,C>?
              baseUpdateModelToNamedServiceParameterNamedFBDS,
          C? parameter) async {
    if (baseUpdateModelToNamedServiceParameterNamedFBDS == null) {
      return await iUpdateModelToNamedServiceParameterNamedDataSource
          .updateModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = baseUpdateModelToNamedServiceParameterNamedFBDS
        .updateModelToNamedServiceParameterNamedFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iUpdateModelToNamedServiceParameterNamedDataSource
        .updateModelToNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?> _updateListModelToNamedServiceNPUsingFBDS<
          X extends Object, C extends Object>(
      IUpdateListModelToNamedServiceNPDataSource<X>
          iUpdateListModelToNamedServiceNPDataSource,
      BaseUpdateListModelToNamedServiceNPFBDS<X, C>?
          baseUpdateListModelToNamedServiceNPFBDS,
      C? parameter) async {
    if (baseUpdateListModelToNamedServiceNPFBDS == null) {
      return await iUpdateListModelToNamedServiceNPDataSource
          .updateListModelToNamedServiceNPDS();
    }
    final response = baseUpdateListModelToNamedServiceNPFBDS
        .updateListModelToNamedServiceNPFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iUpdateListModelToNamedServiceNPDataSource
        .updateListModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?>
      _updateListModelToNamedServiceParameterNamedUsingFBDS<X extends Object, C extends Object>(
          IUpdateListModelToNamedServiceParameterNamedDataSource<X,C>
              iUpdateListModelToNamedServiceParameterNamedDataSource,
          BaseUpdateListModelToNamedServiceParameterNamedFBDS<X, C>?
              baseUpdateListModelToNamedServiceParameterNamedFBDS,
          C? parameter) async {
    if (baseUpdateListModelToNamedServiceParameterNamedFBDS == null) {
      return await iUpdateListModelToNamedServiceParameterNamedDataSource
          .updateListModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = baseUpdateListModelToNamedServiceParameterNamedFBDS
        .updateListModelToNamedServiceParameterNamedFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iUpdateListModelToNamedServiceParameterNamedDataSource
        .updateListModelToNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?> _deleteModelToNamedServiceNPUsingFBDS<
          X extends Object, C extends Object>(
      IDeleteModelToNamedServiceNPDataSource<X>
          iDeleteModelToNamedServiceNPDataSource,
      BaseDeleteModelToNamedServiceNPFBDS<X, C>? baseDeleteModelToNamedServiceNPFBDS,
      C? parameter) async {
    if (baseDeleteModelToNamedServiceNPFBDS == null) {
      return await iDeleteModelToNamedServiceNPDataSource
          .deleteModelToNamedServiceNPDS();
    }
    final response = baseDeleteModelToNamedServiceNPFBDS
        .deleteModelToNamedServiceNPFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iDeleteModelToNamedServiceNPDataSource
        .deleteModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?>
      _deleteModelToNamedServiceParameterNamedUsingFBDS<
              X extends Object, C extends Object>(
          IDeleteModelToNamedServiceParameterNamedDataSource<X,C>
              iDeleteModelToNamedServiceParameterNamedDataSource,
          BaseDeleteModelToNamedServiceParameterNamedFBDS<X, C>?
              baseDeleteModelToNamedServiceParameterNamedFBDS,
          C? parameter) async {
    if (baseDeleteModelToNamedServiceParameterNamedFBDS == null) {
      return await iDeleteModelToNamedServiceParameterNamedDataSource
          .deleteModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = baseDeleteModelToNamedServiceParameterNamedFBDS
        .deleteModelToNamedServiceParameterNamedFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iDeleteModelToNamedServiceParameterNamedDataSource
        .deleteModelToNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?> _deleteListModelToNamedServiceNPUsingFBDS<
          X extends Object, C extends Object>(
      IDeleteListModelToNamedServiceNPDataSource<X>
          iDeleteListModelToNamedServiceNPDataSource,
      BaseDeleteListModelToNamedServiceNPFBDS<X, C>?
          baseDeleteListModelToNamedServiceNPFBDS,
      C? parameter) async {
    if (baseDeleteListModelToNamedServiceNPFBDS == null) {
      return await iDeleteListModelToNamedServiceNPDataSource
          .deleteListModelToNamedServiceNPDS();
    }
    final response = baseDeleteListModelToNamedServiceNPFBDS
        .deleteListModelToNamedServiceNPFBDS(parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iDeleteListModelToNamedServiceNPDataSource
        .deleteListModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  Future<Result<X>?>
      _deleteListModelToNamedServiceParameterNamedUsingFBDS<X extends Object, C extends Object>(
          IDeleteListModelToNamedServiceParameterNamedDataSource<X,C>
              iDeleteListModelToNamedServiceParameterNamedDataSource,
          BaseDeleteListModelToNamedServiceParameterNamedFBDS<X, C>?
              baseDeleteListModelToNamedServiceParameterNamedFBDS,
          C? parameter) async {
    if (baseDeleteListModelToNamedServiceParameterNamedFBDS == null) {
      return await iDeleteListModelToNamedServiceParameterNamedDataSource
          .deleteListModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = baseDeleteListModelToNamedServiceParameterNamedFBDS
        .deleteListModelToNamedServiceParameterNamedFBDS(
            parameter);
    if (response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await iDeleteListModelToNamedServiceParameterNamedDataSource
        .deleteListModelToNamedServiceParameterNamedDS(parameter);
  }
}
