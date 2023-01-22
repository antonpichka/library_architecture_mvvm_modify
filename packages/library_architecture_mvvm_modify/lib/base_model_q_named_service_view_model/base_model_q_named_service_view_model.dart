import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/delete_list_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/delete_list_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/delete_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/delete_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/get_list_model_from_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/get_list_model_from_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/get_model_from_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/get_model_from_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/insert_list_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/insert_list_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/insert_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/insert_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/update_list_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/update_list_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/update_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/update_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/delete_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/delete_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/delete_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_list_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/insert_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/insert_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/insert_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/insert_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/update_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/update_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/update_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:meta/meta.dart';

/// This class is necessary for accessing the database,
/// the network (DataSource) and also before accessing the database, the network,
/// check the data and calculate if necessary in (FBDS),
/// also if there is a Stream in the Service,
/// it can pass it for control to the "ModelQThereIsStateViewModel" class if it is necessary
abstract class BaseModelQNamedServiceViewModel<T extends BaseModel,Y extends BaseListModel<T>> {
  ///   Example Using:
  ///
  ///   @nonVirtual
  ///   @override
  ///   Object? get modelQNamedServiceDataSource => this;
  Object? get modelQNamedServiceDataSource;

  // Start getListNP 3
  /// The purpose of this method is to take data from the Service
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNP() {
    return _baseGetListModelFromNamedServiceNPUsingParameterForFBDS<Object>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>,
        null,
        null);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNPUsingFBDS(
      GetListModelFromNamedServiceNPFBDS<Y,Object> getListModelFromNamedServiceNPFBDS)
  {
    return _baseGetListModelFromNamedServiceNPUsingParameterForFBDS<Object>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>,
        getListModelFromNamedServiceNPFBDS,
        null);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNPUsingParameterForFBDS<C extends Object>(
      GetListModelFromNamedServiceNPFBDS<Y,C> getListModelFromNamedServiceNPFBDS,
      C parameterForFBDS)
  {
    return _baseGetListModelFromNamedServiceNPUsingParameterForFBDS<C>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>,
        getListModelFromNamedServiceNPFBDS,
        parameterForFBDS);
  }
  // End getListNP 3

  // Start getListParameterNamed 3
  /// The purpose of this method is to take data from the Service
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamed<X extends Object>(
      X parameter)
  {
    return _baseGetListModelFromNamedServiceParameterNamedUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,X>,
        null,
        parameter,
        null);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamedUsingFBDS<X extends Object>(
      GetListModelFromNamedServiceParameterNamedFBDS<Y,X,Object> getModelFromNamedServiceParameterNamedFBDS,
      X parameter)
  {
    return _baseGetListModelFromNamedServiceParameterNamedUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,X>,
        getModelFromNamedServiceParameterNamedFBDS,
        parameter,
        null);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamedUsingParameterForFBDS<X extends Object,C extends Object>(
      GetListModelFromNamedServiceParameterNamedFBDS<Y,X,C> getModelFromNamedServiceParameterNamedFBDS,
      X parameter,
      C parameterForFBDS)
  {
    return _baseGetListModelFromNamedServiceParameterNamedUsingParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,X>,
        getModelFromNamedServiceParameterNamedFBDS,
        parameter,
        parameterForFBDS);
  }
  // End getListParameterNamed 3

  // Start getNP 3
  /// The purpose of this method is to take data from the Service
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNP() {
    return _baseGetModelFromNamedServiceNPUsingParameterForFBDS<Object>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>,
        null,
        null);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNPUsingFBDS(
      GetModelFromNamedServiceNPFBDS<T,Object> getModelFromNamedServiceNPFBDS)
  {
    return _baseGetModelFromNamedServiceNPUsingParameterForFBDS<Object>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>,
        getModelFromNamedServiceNPFBDS,
        null);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNPUsingParameterForFBDS<C extends Object>(
      GetModelFromNamedServiceNPFBDS<T,C> getModelFromNamedServiceNPFBDS,
      C parameterForFBDS)
  {
    return _baseGetModelFromNamedServiceNPUsingParameterForFBDS<C>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>,
        getModelFromNamedServiceNPFBDS,
        parameterForFBDS);
  }
  // End getNP 3

  // Start getParameterNamed 3
  /// The purpose of this method is to take data from the Service
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamed<X extends Object>(
      X parameter)
  {
    return _baseGetModelFromNamedServiceParameterNamedUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,X>,
        null,
        parameter,
        null);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamedUsingFBDS<X extends Object>(
      GetModelFromNamedServiceParameterNamedFBDS<T,X,Object> getModelFromNamedServiceParameterNamedFBDS,
      X parameter)
  {
    return _baseGetModelFromNamedServiceParameterNamedUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,X>,
        getModelFromNamedServiceParameterNamedFBDS,
        parameter,
        null);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamedUsingParameterForFBDS<X extends Object,C extends Object>(
      GetModelFromNamedServiceParameterNamedFBDS<T,X,C> getModelFromNamedServiceParameterNamedFBDS,
      X parameter,
      C parameterForFBDS)
  {
    return _baseGetModelFromNamedServiceParameterNamedUsingParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,X>,
        getModelFromNamedServiceParameterNamedFBDS,
        parameter,
        parameterForFBDS);
  }
  // End getParameterNamed 3

  // Start insertNP 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> insertModelToNamedServiceNP<X extends Object>() {
    return _baseInsertModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> insertModelToNamedServiceNPUsingFBDS<X extends Object>(
      InsertModelToNamedServiceNPFBDS<X,Object> insertModelToNamedServiceNPFBDS)
  {
    return _baseInsertModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource<X>,
        insertModelToNamedServiceNPFBDS,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<X>?> insertModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      InsertModelToNamedServiceNPFBDS<X,C> insertModelToNamedServiceNPFBDS,
      C parameterForFBDS)
  {
    return _baseInsertModelToNamedServiceNPUsingParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource<X>,
        insertModelToNamedServiceNPFBDS,
        parameterForFBDS);
  }
  // End insertNP 3

  // Start insertParameterNamed 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<Z>?> insertModelToNamedServiceParameterNamed<Z extends Object,X extends Object>(
      X parameter)
  {
    return _baseInsertModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<Z>?> insertModelToNamedServiceParameterNamedUsingFBDS<Z extends Object,X extends Object>(
      InsertModelToNamedServiceParameterNamedFBDS<Z,X,Object> insertModelToNamedServiceParameterNamedFBDS,
      X parameter)
  {
    return _baseInsertModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<Z,X>,
        insertModelToNamedServiceParameterNamedFBDS,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<Z>?> insertModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      InsertModelToNamedServiceParameterNamedFBDS<Z,X,C> insertModelToNamedServiceParameterNamedFBDS,
      X parameter,
      C parameterForFBDS)
  {
    return _baseInsertModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<Z,X>,
        insertModelToNamedServiceParameterNamedFBDS,
        parameter,
        parameterForFBDS);
  }
  // End insertParameterNamed 3

  // Start insertListNP 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> insertListModelToNamedServiceNP<X extends Object>() {
    return _baseInsertListModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> insertListModelToNamedServiceNPUsingFBDS<X extends Object>(
      InsertListModelToNamedServiceNPFBDS<X,Object> insertListModelToNamedServiceNPFBDS)
  {
    return _baseInsertListModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource<X>,
        insertListModelToNamedServiceNPFBDS,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<X>?> insertListModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      InsertListModelToNamedServiceNPFBDS<X,C> insertListModelToNamedServiceNPFBDS,
      C parameterForFBDS)
  {
    return _baseInsertListModelToNamedServiceNPUsingParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource<X>,
        insertListModelToNamedServiceNPFBDS,
        parameterForFBDS);
  }
  // End insertListNP 3

  // Start insertListParameterNamed 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<Z>?> insertListModelToNamedServiceParameterNamed<Z extends Object,X extends Object>(
      X parameter)
  {
    return _baseInsertListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<Z>?> insertListModelToNamedServiceParameterNamedUsingFBDS<Z extends Object,X extends Object>(
      InsertListModelToNamedServiceParameterNamedFBDS<Z,X,Object> insertListModelToNamedServiceParameterNamedFBDS,
      X parameter)
  {
    return _baseInsertListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<Z,X>,
        insertListModelToNamedServiceParameterNamedFBDS,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<Z>?> insertListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      InsertListModelToNamedServiceParameterNamedFBDS<Z,X,C> insertListModelToNamedServiceParameterNamedFBDS,
      X parameter,
      C parameterForFBDS)
  {
    return _baseInsertListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<Z,X>,
        insertListModelToNamedServiceParameterNamedFBDS,
        parameter,
        parameterForFBDS);
  }
  // End insertListParameterNamed 3

  // Start updateNP 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> updateModelToNamedServiceNP<X extends Object>() {
    return _baseUpdateModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> updateModelToNamedServiceNPUsingFBDS<X extends Object>(
      UpdateModelToNamedServiceNPFBDS<X,Object> updateModelToNamedServiceNPFBDS)
  {
    return _baseUpdateModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource<X>,
        updateModelToNamedServiceNPFBDS,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<X>?> updateModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      UpdateModelToNamedServiceNPFBDS<X,C> updateModelToNamedServiceNPFBDS,
      C parameterForFBDS)
  {
    return _baseUpdateModelToNamedServiceNPUsingParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource<X>,
        updateModelToNamedServiceNPFBDS,
        parameterForFBDS);
  }
  // End updateNP 3

  // Start updateParameterNamed 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<Z>?> updateModelToNamedServiceParameterNamed<Z extends Object,X extends Object>(
      X parameter)
  {
    return _baseUpdateModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<Z>?> updateModelToNamedServiceParameterNamedUsingFBDS<Z extends Object,X extends Object>(
      UpdateModelToNamedServiceParameterNamedFBDS<Z,X,Object> updateModelToNamedServiceParameterNamedFBDS,
      X parameter)
  {
    return _baseUpdateModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<Z,X>,
        updateModelToNamedServiceParameterNamedFBDS,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<Z>?> updateModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      UpdateModelToNamedServiceParameterNamedFBDS<Z,X,C> updateModelToNamedServiceParameterNamedFBDS,
      X parameter,
      C parameterForFBDS)
  {
    return _baseUpdateModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<Z,X>,
        updateModelToNamedServiceParameterNamedFBDS,
        parameter,
        parameterForFBDS);
  }
  // End updateParameterNamed 3

  // Start updateListNP 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> updateListModelToNamedServiceNP<X extends Object>() {
    return _baseUpdateListModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> updateListModelToNamedServiceNPUsingFBDS<X extends Object>(
      UpdateListModelToNamedServiceNPFBDS<X,Object> updateListModelToNamedServiceNPFBDS)
  {
    return _baseUpdateListModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource<X>,
        updateListModelToNamedServiceNPFBDS,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<X>?> updateListModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      UpdateListModelToNamedServiceNPFBDS<X,C> updateListModelToNamedServiceNPFBDS,
      C parameterForFBDS)
  {
    return _baseUpdateListModelToNamedServiceNPUsingParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource<X>,
        updateListModelToNamedServiceNPFBDS,
        parameterForFBDS);
  }
  // End updateListNP 3

  // Start updateListParameterNamed 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<Z>?> updateListModelToNamedServiceParameterNamed<Z extends Object,X extends Object>(
      X parameter)
  {
    return _baseUpdateListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<Z>?> updateListModelToNamedServiceParameterNamedUsingFBDS<Z extends Object,X extends Object>(
      UpdateListModelToNamedServiceParameterNamedFBDS<Z,X,Object> updateListModelToNamedServiceParameterNamedFBDS,
      X parameter)
  {
    return _baseUpdateListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<Z,X>,
        updateListModelToNamedServiceParameterNamedFBDS,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<Z>?> updateListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      UpdateListModelToNamedServiceParameterNamedFBDS<Z,X,C> updateListModelToNamedServiceParameterNamedFBDS,
      X parameter,
      C parameterForFBDS)
  {
    return _baseUpdateListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<Z,X>,
        updateListModelToNamedServiceParameterNamedFBDS,
        parameter,
        parameterForFBDS);
  }
  // End updateListParameterNamed 3

  // Start deleteNP 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> deleteModelToNamedServiceNP<X extends Object>() {
    return _baseDeleteModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> deleteModelToNamedServiceNPUsingFBDS<X extends Object>(
      DeleteModelToNamedServiceNPFBDS<X,Object> deleteModelToNamedServiceNPFBDS)
  {
    return _baseDeleteModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource<X>,
        deleteModelToNamedServiceNPFBDS,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<X>?> deleteModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      DeleteModelToNamedServiceNPFBDS<X,C> deleteModelToNamedServiceNPFBDS,
      C parameterForFBDS)
  {
    return _baseDeleteModelToNamedServiceNPUsingParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource<X>,
        deleteModelToNamedServiceNPFBDS,
        parameterForFBDS);
  }
  // End deleteNP 3

  // Start deleteParameterNamed 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<Z>?> deleteModelToNamedServiceParameterNamed<Z extends Object,X extends Object>(
      X parameter)
  {
    return _baseDeleteModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<Z>?> deleteModelToNamedServiceParameterNamedUsingFBDS<Z extends Object,X extends Object>(
      DeleteModelToNamedServiceParameterNamedFBDS<Z,X,Object> deleteModelToNamedServiceParameterNamedFBDS,
      X parameter)
  {
    return _baseDeleteModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<Z,X>,
        deleteModelToNamedServiceParameterNamedFBDS,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<Z>?> deleteModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      DeleteModelToNamedServiceParameterNamedFBDS<Z,X,C> deleteModelToNamedServiceParameterNamedFBDS,
      X parameter,
      C parameterForFBDS)
  {
    return _baseDeleteModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<Z,X>,
        deleteModelToNamedServiceParameterNamedFBDS,
        parameter,
        parameterForFBDS);
  }
  // End deleteParameterNamed 3

  // Start deleteListNP 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<X>?> deleteListModelToNamedServiceNP<X extends Object>() {
    return _baseDeleteListModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<X>?> deleteListModelToNamedServiceNPUsingFBDS<X extends Object>(
      DeleteListModelToNamedServiceNPFBDS<X,Object> deleteListModelToNamedServiceNPFBDS)
  {
    return _baseDeleteListModelToNamedServiceNPUsingParameterForFBDS<X,Object>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource<X>,
        deleteListModelToNamedServiceNPFBDS,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<X>?> deleteListModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      DeleteListModelToNamedServiceNPFBDS<X,C> deleteListModelToNamedServiceNPFBDS,
      C parameterForFBDS)
  {
    return _baseDeleteListModelToNamedServiceNPUsingParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource<X>,
        deleteListModelToNamedServiceNPFBDS,
        parameterForFBDS);
  }
  // End deleteListNP 3

  // Start deleteListParameterNamed 3
  /// The purpose of this method is to send data to the Service
  @protected
  @nonVirtual
  Future<Result<Z>?> deleteListModelToNamedServiceParameterNamed<Z extends Object,X extends Object>(
      X parameter)
  {
    return _baseDeleteListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  @protected
  @nonVirtual
  Future<Result<Z>?> deleteListModelToNamedServiceParameterNamedUsingFBDS<Z extends Object,X extends Object>(
      DeleteListModelToNamedServiceParameterNamedFBDS<Z,X,Object> deleteListModelToNamedServiceParameterNamedFBDS,
      X parameter)
  {
    return _baseDeleteListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,Object>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<Z,X>,
        deleteListModelToNamedServiceParameterNamedFBDS,
        parameter,
        null);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  @protected
  @nonVirtual
  Future<Result<Z>?> deleteListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      DeleteListModelToNamedServiceParameterNamedFBDS<Z,X,C> deleteListModelToNamedServiceParameterNamedFBDS,
      X parameter,
      C parameterForFBDS)
  {
    return _baseDeleteListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<Z,X>,
        deleteListModelToNamedServiceParameterNamedFBDS,
        parameter,
        parameterForFBDS);
  }
  // End deleteListParameterNamed 3

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Y?> _baseGetListModelFromNamedServiceNPUsingParameterForFBDS<C extends Object>(
      GetListModelFromNamedServiceNPDataSource<Y> getListModelFromNamedServiceNPDataSource,
      GetListModelFromNamedServiceNPFBDS<Y,C>? getListModelFromNamedServiceNPFBDS,
      C? parameterForFBDS)
  async {
    if(getListModelFromNamedServiceNPFBDS == null) {
      return await getListModelFromNamedServiceNPDataSource
          .getListModelFromNamedServiceNPDS();
    }
    final response = getListModelFromNamedServiceNPFBDS
        .getListModelFromNamedServiceNP(parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await getListModelFromNamedServiceNPDataSource
        .getListModelFromNamedServiceNPDS();
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Y?> _baseGetListModelFromNamedServiceParameterNamedUsingParameterForFBDS<X extends Object,C extends Object>(
      GetListModelFromNamedServiceParameterNamedDataSource<Y,X> getListModelFromNamedServiceParameterNamedDataSource,
      GetListModelFromNamedServiceParameterNamedFBDS<Y,X,C>? getListModelFromNamedServiceParameterNamedFBDS,
      X? parameter,
      C? parameterForFBDS)
  async {
    if(getListModelFromNamedServiceParameterNamedFBDS == null) {
      return await getListModelFromNamedServiceParameterNamedDataSource
          .getListModelFromNamedServiceParameterNamedDS(parameter);
    }
    final response = getListModelFromNamedServiceParameterNamedFBDS
        .getListModelFromNamedServiceParameterNamed(parameter,parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await getListModelFromNamedServiceParameterNamedDataSource
        .getListModelFromNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<T?> _baseGetModelFromNamedServiceNPUsingParameterForFBDS<C extends Object>(
      GetModelFromNamedServiceNPDataSource<T> getModelFromNamedServiceNPDataSource,
      GetModelFromNamedServiceNPFBDS<T,C>? getModelFromNamedServiceNPFBDS,
      C? parameterForFBDS)
  async {
    if(getModelFromNamedServiceNPFBDS == null) {
      return await getModelFromNamedServiceNPDataSource
          .getModelFromNamedServiceNPDS();
    }
    final response = getModelFromNamedServiceNPFBDS
        .getModelFromNamedServiceNP(parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await getModelFromNamedServiceNPDataSource
        .getModelFromNamedServiceNPDS();
  }

  /// The purpose of this method is to take data from the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<T?> _baseGetModelFromNamedServiceParameterNamedUsingParameterForFBDS<X extends Object,C extends Object>(
      GetModelFromNamedServiceParameterNamedDataSource<T,X> getModelFromNamedServiceParameterNamedDataSource,
      GetModelFromNamedServiceParameterNamedFBDS<T,X,C>? getModelFromNamedServiceParameterNamedFBDS,
      X? parameter,
      C? parameterForFBDS)
  async {
    if(getModelFromNamedServiceParameterNamedFBDS == null) {
      return await getModelFromNamedServiceParameterNamedDataSource
          .getModelFromNamedServiceParameterNamedDS(parameter);
    }
    final response = getModelFromNamedServiceParameterNamedFBDS
        .getModelFromNamedServiceParameterNamed(parameter,parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await getModelFromNamedServiceParameterNamedDataSource
        .getModelFromNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<X>?> _baseInsertModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      InsertModelToNamedServiceNPDataSource<X> insertModelToNamedServiceNPDataSource,
      InsertModelToNamedServiceNPFBDS<X,C>? insertModelToNamedServiceNPFBDS,
      C? parameterForFBDS)
  async {
    if(insertModelToNamedServiceNPFBDS == null) {
      return await insertModelToNamedServiceNPDataSource
          .insertModelToNamedServiceNPDS();
    }
    final response = insertModelToNamedServiceNPFBDS
        .insertModelToNamedServiceNP(parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await insertModelToNamedServiceNPDataSource
        .insertModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<Z>?> _baseInsertModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      InsertModelToNamedServiceParameterNamedDataSource<Z,X> insertModelToNamedServiceParameterNamedDataSource,
      InsertModelToNamedServiceParameterNamedFBDS<Z,X,C>? insertModelToNamedServiceParameterNamedFBDS,
      X? parameter,
      C? parameterForFBDS)
  async {
    if(insertModelToNamedServiceParameterNamedFBDS == null) {
      return await insertModelToNamedServiceParameterNamedDataSource
          .insertModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = insertModelToNamedServiceParameterNamedFBDS
        .insertModelToNamedServiceParameterNamed(parameter,parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await insertModelToNamedServiceParameterNamedDataSource
        .insertModelToNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<X>?> _baseInsertListModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      InsertListModelToNamedServiceNPDataSource<X> insertListModelToNamedServiceNPDataSource,
      InsertListModelToNamedServiceNPFBDS<X,C>? insertListModelToNamedServiceNPFBDS,
      C? parameterForFBDS)
  async {
    if(insertListModelToNamedServiceNPFBDS == null) {
      return await insertListModelToNamedServiceNPDataSource
          .insertListModelToNamedServiceNPDS();
    }
    final response = insertListModelToNamedServiceNPFBDS
        .insertListModelToNamedServiceNP(parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await insertListModelToNamedServiceNPDataSource
        .insertListModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<Z>?> _baseInsertListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      InsertListModelToNamedServiceParameterNamedDataSource<Z,X> insertListModelToNamedServiceParameterNamedDataSource,
      InsertListModelToNamedServiceParameterNamedFBDS<Z,X,C>? insertListModelToNamedServiceParameterNamedFBDS,
      X? parameter,
      C? parameterForFBDS)
  async {
    if(insertListModelToNamedServiceParameterNamedFBDS == null) {
      return await insertListModelToNamedServiceParameterNamedDataSource
          .insertListModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = insertListModelToNamedServiceParameterNamedFBDS
        .insertListModelToNamedServiceParameterNamed(parameter,parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await insertListModelToNamedServiceParameterNamedDataSource
        .insertListModelToNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<X>?> _baseUpdateModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      UpdateModelToNamedServiceNPDataSource<X> updateModelToNamedServiceNPDataSource,
      UpdateModelToNamedServiceNPFBDS<X,C>? updateModelToNamedServiceNPFBDS,
      C? parameterForFBDS)
  async {
    if(updateModelToNamedServiceNPFBDS == null) {
      return await updateModelToNamedServiceNPDataSource
          .updateModelToNamedServiceNPDS();
    }
    final response = updateModelToNamedServiceNPFBDS
        .updateModelToNamedServiceNP(parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await updateModelToNamedServiceNPDataSource
        .updateModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<Z>?> _baseUpdateModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      UpdateModelToNamedServiceParameterNamedDataSource<Z,X> updateModelToNamedServiceParameterNamedDataSource,
      UpdateModelToNamedServiceParameterNamedFBDS<Z,X,C>? updateModelToNamedServiceParameterNamedFBDS,
      X? parameter,
      C? parameterForFBDS)
  async {
    if(updateModelToNamedServiceParameterNamedFBDS == null) {
      return await updateModelToNamedServiceParameterNamedDataSource
          .updateModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = updateModelToNamedServiceParameterNamedFBDS
        .updateModelToNamedServiceParameterNamed(parameter,parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await updateModelToNamedServiceParameterNamedDataSource
        .updateModelToNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<X>?> _baseUpdateListModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      UpdateListModelToNamedServiceNPDataSource<X> updateListModelToNamedServiceNPDataSource,
      UpdateListModelToNamedServiceNPFBDS<X,C>? updateListModelToNamedServiceNPFBDS,
      C? parameterForFBDS)
  async {
    if(updateListModelToNamedServiceNPFBDS == null) {
      return await updateListModelToNamedServiceNPDataSource
          .updateListModelToNamedServiceNPDS();
    }
    final response = updateListModelToNamedServiceNPFBDS
        .updateListModelToNamedServiceNP(parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await updateListModelToNamedServiceNPDataSource
        .updateListModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<Z>?> _baseUpdateListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      UpdateListModelToNamedServiceParameterNamedDataSource<Z,X> updateListModelToNamedServiceParameterNamedDataSource,
      UpdateListModelToNamedServiceParameterNamedFBDS<Z,X,C>? updateListModelToNamedServiceParameterNamedFBDS,
      X? parameter,
      C? parameterForFBDS)
  async {
    if(updateListModelToNamedServiceParameterNamedFBDS == null) {
      return await updateListModelToNamedServiceParameterNamedDataSource
          .updateListModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = updateListModelToNamedServiceParameterNamedFBDS
        .updateListModelToNamedServiceParameterNamed(parameter,parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await updateListModelToNamedServiceParameterNamedDataSource
        .updateListModelToNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<X>?> _baseDeleteModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      DeleteModelToNamedServiceNPDataSource<X> deleteModelToNamedServiceNPDataSource,
      DeleteModelToNamedServiceNPFBDS<X,C>? deleteModelToNamedServiceNPFBDS,
      C? parameterForFBDS)
  async {
    if(deleteModelToNamedServiceNPFBDS == null) {
      return await deleteModelToNamedServiceNPDataSource
          .deleteModelToNamedServiceNPDS();
    }
    final response = deleteModelToNamedServiceNPFBDS
        .deleteModelToNamedServiceNP(parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await deleteModelToNamedServiceNPDataSource
        .deleteModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<Z>?> _baseDeleteModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      DeleteModelToNamedServiceParameterNamedDataSource<Z,X> deleteModelToNamedServiceParameterNamedDataSource,
      DeleteModelToNamedServiceParameterNamedFBDS<Z,X,C>? deleteModelToNamedServiceParameterNamedFBDS,
      X? parameter,
      C? parameterForFBDS)
  async {
    if(deleteModelToNamedServiceParameterNamedFBDS == null) {
      return await deleteModelToNamedServiceParameterNamedDataSource
          .deleteModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = deleteModelToNamedServiceParameterNamedFBDS
        .deleteModelToNamedServiceParameterNamed(parameter,parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await deleteModelToNamedServiceParameterNamedDataSource
        .deleteModelToNamedServiceParameterNamedDS(parameter);
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<X>?> _baseDeleteListModelToNamedServiceNPUsingParameterForFBDS<X extends Object,C extends Object>(
      DeleteListModelToNamedServiceNPDataSource<X> deleteListModelToNamedServiceNPDataSource,
      DeleteListModelToNamedServiceNPFBDS<X,C>? deleteListModelToNamedServiceNPFBDS,
      C? parameterForFBDS)
  async {
    if(deleteListModelToNamedServiceNPFBDS == null) {
      return await deleteListModelToNamedServiceNPDataSource
          .deleteListModelToNamedServiceNPDS();
    }
    final response = deleteListModelToNamedServiceNPFBDS
        .deleteListModelToNamedServiceNP(parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await deleteListModelToNamedServiceNPDataSource
        .deleteListModelToNamedServiceNPDS();
  }

  /// The purpose of this method is to send data to the Service,
  /// but before the start there will be a call to FBDS (if yours is not null)
  /// you can also throw additional parameters for FBDS
  Future<Result<Z>?> _baseDeleteListModelToNamedServiceParameterNamedUsingParameterForFBDS<Z extends Object,X extends Object,C extends Object>(
      DeleteListModelToNamedServiceParameterNamedDataSource<Z,X> deleteListModelToNamedServiceParameterNamedDataSource,
      DeleteListModelToNamedServiceParameterNamedFBDS<Z,X,C>? deleteListModelToNamedServiceParameterNamedFBDS,
      X? parameter,
      C? parameterForFBDS)
  async {
    if(deleteListModelToNamedServiceParameterNamedFBDS == null) {
      return await deleteListModelToNamedServiceParameterNamedDataSource
          .deleteListModelToNamedServiceParameterNamedDS(parameter);
    }
    final response = deleteListModelToNamedServiceParameterNamedFBDS
        .deleteListModelToNamedServiceParameterNamed(parameter,parameterForFBDS);
    if(response!.exceptionController.isNotEqualsNullParameterException()) {
      return response;
    }
    return await deleteListModelToNamedServiceParameterNamedDataSource
        .deleteListModelToNamedServiceParameterNamedDS(parameter);
  }
}