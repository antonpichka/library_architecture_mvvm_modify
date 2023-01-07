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
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_testing.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';
import 'package:meta/meta.dart';

abstract class BaseModelQNamedServiceViewModel<T extends BaseModel,Y extends BaseListModel<T>>
    extends BaseTesting
{
  /* FBDS (Function Before Data Source) */
  GetListModelFromNamedServiceNPFBDS? _getListModelFromNamedServiceNPFBDS;
  GetModelFromNamedServiceNPFBDS? _getModelFromNamedServiceNPFBDS;
  InsertModelToNamedServiceNPFBDS? _insertModelToNamedServiceNPFBDS;
  InsertListModelToNamedServiceNPFBDS? _insertListModelToNamedServiceNPFBDS;
  UpdateModelToNamedServiceNPFBDS? _updateModelToNamedServiceNPFBDS;
  UpdateListModelToNamedServiceNPFBDS? _updateListModelToNamedServiceNPFBDS;
  DeleteModelToNamedServiceNPFBDS? _deleteModelToNamedServiceNPFBDS;
  DeleteListModelToNamedServiceNPFBDS? _deleteListModelToNamedServiceNPFBDS;

  GetListModelFromNamedServiceParameterNamedFBDS? _getListModelFromNamedServiceParameterNamedFBDS;
  GetModelFromNamedServiceParameterNamedFBDS? _getModelFromNamedServiceParameterNamedFBDS;
  InsertModelToNamedServiceParameterNamedFBDS? _insertModelToNamedServiceParameterNamedFBDS;
  InsertListModelToNamedServiceParameterNamedFBDS? _insertListModelToNamedServiceParameterNamedFBDS;
  UpdateModelToNamedServiceParameterNamedFBDS? _updateModelToNamedServiceParameterNamedFBDS;
  UpdateListModelToNamedServiceParameterNamedFBDS? _updateListModelToNamedServiceParameterNamedFBDS;
  DeleteModelToNamedServiceParameterNamedFBDS? _deleteModelToNamedServiceParameterNamedFBDS;
  DeleteListModelToNamedServiceParameterNamedFBDS? _deleteListModelToNamedServiceParameterNamedFBDS;

  ///   Start ModelQNamedServiceDataSource **/
  ///   Example Using:
  ///
  ///   @protected
  ///   @override
  ///   ModelQNamedServiceDataSource? get getModelQNamedServiceDataSource => _modelQNamedServiceDataSource;
  @protected
  Object? get getModelQNamedServiceDataSource;
  ///   End ModelQNamedServiceDataSource **/

  /// Start Setters FBDS **/
  @protected
  @nonVirtual
  set setGetListModelFromNamedServiceNPFBDS(
      GetListModelFromNamedServiceNPFBDS getListModelFromNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _getListModelFromNamedServiceNPFBDS = getListModelFromNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setGetModelFromNamedServiceNPFBDS(
      GetModelFromNamedServiceNPFBDS getModelFromNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _getModelFromNamedServiceNPFBDS = getModelFromNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertModelToNamedServiceNPFBDS(
      InsertModelToNamedServiceNPFBDS insertModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _insertModelToNamedServiceNPFBDS = insertModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedServiceNPFBDS(
      UpdateModelToNamedServiceNPFBDS updateModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _updateModelToNamedServiceNPFBDS = updateModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedServiceNPFBDS(
      DeleteModelToNamedServiceNPFBDS deleteModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _deleteModelToNamedServiceNPFBDS = deleteModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedServiceNPFBDS(
      InsertListModelToNamedServiceNPFBDS insertListModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _insertListModelToNamedServiceNPFBDS = insertListModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedServiceNPFBDS(
      UpdateListModelToNamedServiceNPFBDS updateListModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _updateListModelToNamedServiceNPFBDS = updateListModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedServiceNPFBDS(
      DeleteListModelToNamedServiceNPFBDS deleteListModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _deleteListModelToNamedServiceNPFBDS = deleteListModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setGetListModelFromNamedServiceParameterNamedFBDS(
      GetListModelFromNamedServiceParameterNamedFBDS getListModelFromNamedServiceParameterNamedFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _getListModelFromNamedServiceParameterNamedFBDS = getListModelFromNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setGetModelFromNamedServiceParameterNamedFBDS(
      GetModelFromNamedServiceParameterNamedFBDS getModelFromNamedServiceParameterNamedFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _getModelFromNamedServiceParameterNamedFBDS = getModelFromNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setInsertModelToNamedServiceParameterNamedFBDS(
      InsertModelToNamedServiceParameterNamedFBDS insertModelToNamedServiceParameterNamedFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _insertModelToNamedServiceParameterNamedFBDS = insertModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedServiceParameterNamedFBDS(
      UpdateModelToNamedServiceParameterNamedFBDS updateModelToNamedServiceParameterNamedFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _updateModelToNamedServiceParameterNamedFBDS = updateModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedServiceParameterNamedFBDS(
      DeleteModelToNamedServiceParameterNamedFBDS deleteModelToNamedServiceParameterNamedFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _deleteModelToNamedServiceParameterNamedFBDS = deleteModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedServiceParameterNamedFBDS(
      InsertListModelToNamedServiceParameterNamedFBDS insertListModelToNamedServiceParameterNamedFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _insertListModelToNamedServiceParameterNamedFBDS = insertListModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedServiceParameterNamedFBDS(
      UpdateListModelToNamedServiceParameterNamedFBDS updateListModelToNamedServiceParameterNamedFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _updateListModelToNamedServiceParameterNamedFBDS = updateListModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedServiceParameterNamedFBDS(
      DeleteListModelToNamedServiceParameterNamedFBDS deleteListModelToNamedServiceParameterNamedFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    _deleteListModelToNamedServiceParameterNamedFBDS = deleteListModelToNamedServiceParameterNamedFBDS;
  }
  /// End Setters FBDS **/

  // Start getListNP 2
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNP()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetListModelFromNamedServiceNPUsingTypeParameterForFBDS<BaseTypeParameter>(
        getModelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>,
        null);
  }

  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetListModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(
        getModelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>,
        typeParameterForFBDS);
  }
  // End getListNP 2

  // Start getListParameterNamed 2
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamed<X extends BaseTypeParameter>(
      X? typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,X>,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,C>(
        getModelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // End getListParameterNamed 2

  // Start getNP 2
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNP()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetModelFromNamedServiceNPUsingTypeParameterForFBDS<BaseTypeParameter>(
        getModelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>,
        null);
  }

  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(
        getModelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>,
        typeParameterForFBDS);
  }
  // End getNP 2

  // Start getParameterNamed 2
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamed<X extends BaseTypeParameter>(
      X? typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,X>,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,C>(
        getModelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // End getParameterNamed 2

  // Start insertNP 2
  @protected
  @nonVirtual
  Future<X?> insertModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> insertModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        getModelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // End insertNP 2

  // Start insertParameterNamed 2
  @protected
  @nonVirtual
  Future<Z?> insertModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> insertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        getModelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // End insertParameterNamed 2

  // Start insertListNP 2
  @protected
  @nonVirtual
  Future<X?> insertListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> insertListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        getModelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // End insertListNP 2

  // Start insertListParameterNamed 2
  @protected
  @nonVirtual
  Future<Z?> insertListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> insertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        getModelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // End insertListParameterNamed 2

  // Start updateNP 2
  @protected
  @nonVirtual
  Future<X?> updateModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> updateModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        getModelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // End updateNP 2

  // Start updateParameterNamed 2
  @protected
  @nonVirtual
  Future<Z?> updateModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> updateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        getModelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // End updateParameterNamed 2

  // Start updateListNP 2
  @protected
  @nonVirtual
  Future<X?> updateListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> updateListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        getModelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // End updateListNP 2

  // Start updateListParameterNamed 2
  @protected
  @nonVirtual
  Future<Z?> updateListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> updateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        getModelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // End updateListParameterNamed 2

  // Start deleteNP 2
  @protected
  @nonVirtual
  Future<X?> deleteModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> deleteModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        getModelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // End deleteNP 2

  // Start deleteParameterNamed 2
  @protected
  @nonVirtual
  Future<Z?> deleteModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> deleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        getModelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // End deleteParameterNamed 2

  // Start deleteListNP 2
  @protected
  @nonVirtual
  Future<X?> deleteListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> deleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        getModelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // End deleteListNP 2

  // Start deleteListParameterNamed 2
  @protected
  @nonVirtual
  Future<Z?> deleteListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        getModelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> deleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        getModelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // End deleteListParameterNamed 2

  Future<Y?> _baseGetListModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      GetListModelFromNamedServiceNPDataSource<Y> getListModelFromNamedServiceNPDataSource,
      C? typeParameterForFBDS)
  async {
    if(_getListModelFromNamedServiceNPFBDS == null) {
      return await getListModelFromNamedServiceNPDataSource
          .getListModelFromNamedServiceNP();
    }
    Y? response = _getListModelFromNamedServiceNPFBDS!
        .getListModelFromNamedServiceNP<Y,C>(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await getListModelFromNamedServiceNPDataSource
        .getListModelFromNamedServiceNP();
  }

  Future<Y?> _baseGetListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      GetListModelFromNamedServiceParameterNamedDataSource<Y,X> getListModelFromNamedServiceParameterNamedDataSource,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(_getListModelFromNamedServiceParameterNamedFBDS == null) {
      return await getListModelFromNamedServiceParameterNamedDataSource
          .getListModelFromNamedServiceParameterNamed(typeParameter);
    }
    Y? response = _getListModelFromNamedServiceParameterNamedFBDS!
        .getListModelFromNamedServiceParameterNamed<Y,X,C>(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await getListModelFromNamedServiceParameterNamedDataSource
        .getListModelFromNamedServiceParameterNamed(typeParameter);
  }

  Future<T?> _baseGetModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      GetModelFromNamedServiceNPDataSource<T> getModelFromNamedServiceNPDataSource,
      C? typeParameterForFBDS)
  async {
    if(_getModelFromNamedServiceNPFBDS == null) {
      return await getModelFromNamedServiceNPDataSource
          .getModelFromNamedServiceNP();
    }
    T? response = _getModelFromNamedServiceNPFBDS!
        .getModelFromNamedServiceNP<T,C>(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await getModelFromNamedServiceNPDataSource
        .getModelFromNamedServiceNP();
  }

  Future<T?> _baseGetModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      GetModelFromNamedServiceParameterNamedDataSource<T,X> getModelFromNamedServiceParameterNamedDataSource,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(_getModelFromNamedServiceParameterNamedFBDS == null) {
      return await getModelFromNamedServiceParameterNamedDataSource
          .getModelFromNamedServiceParameterNamed(typeParameter);
    }
    T? response = _getModelFromNamedServiceParameterNamedFBDS!
        .getModelFromNamedServiceParameterNamed<T,X,C>(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await getModelFromNamedServiceParameterNamedDataSource
        .getModelFromNamedServiceParameterNamed(typeParameter);
  }

  Future<X?> _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertModelToNamedServiceNPDataSource<X> insertModelToNamedServiceNPDataSource,
      C? typeParameterForFBDS)
  async {
    if(_insertModelToNamedServiceNPFBDS == null) {
      return await insertModelToNamedServiceNPDataSource
          .insertModelToNamedServiceNP();
    }
    X? response = _insertModelToNamedServiceNPFBDS!
        .insertModelToNamedServiceNP<X,C>(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await insertModelToNamedServiceNPDataSource
        .insertModelToNamedServiceNP();
  }

  Future<Z?> _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertModelToNamedServiceParameterNamedDataSource<Z,X> insertModelToNamedServiceParameterNamedDataSource,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(_insertModelToNamedServiceParameterNamedFBDS == null) {
      return await insertModelToNamedServiceParameterNamedDataSource
          .insertModelToNamedServiceParameterNamed(typeParameter);
    }
    Z? response = _insertModelToNamedServiceParameterNamedFBDS!
        .insertModelToNamedServiceParameterNamed<Z,X,C>(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await insertModelToNamedServiceParameterNamedDataSource
        .insertModelToNamedServiceParameterNamed(typeParameter);
  }

  Future<X?> _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertListModelToNamedServiceNPDataSource<X> insertListModelToNamedServiceNPDataSource,
      C? typeParameterForFBDS)
  async {
    if(_insertListModelToNamedServiceNPFBDS == null) {
      return await insertListModelToNamedServiceNPDataSource
          .insertListModelToNamedServiceNP();
    }
    X? response = _insertListModelToNamedServiceNPFBDS!
        .insertListModelToNamedServiceNP<X,C>(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await insertListModelToNamedServiceNPDataSource
        .insertListModelToNamedServiceNP();
  }

  Future<Z?> _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertListModelToNamedServiceParameterNamedDataSource<Z,X> insertListModelToNamedServiceParameterNamedDataSource,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(_insertListModelToNamedServiceParameterNamedFBDS == null) {
      return await insertListModelToNamedServiceParameterNamedDataSource
          .insertListModelToNamedServiceParameterNamed(typeParameter);
    }
    Z? response = _insertListModelToNamedServiceParameterNamedFBDS!
        .insertListModelToNamedServiceParameterNamed<Z,X,C>(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await insertListModelToNamedServiceParameterNamedDataSource
        .insertListModelToNamedServiceParameterNamed(typeParameter);
  }

  Future<X?> _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateModelToNamedServiceNPDataSource<X> updateModelToNamedServiceNPDataSource,
      C? typeParameterForFBDS)
  async {
    if(_updateModelToNamedServiceNPFBDS == null) {
      return await updateModelToNamedServiceNPDataSource
          .updateModelToNamedServiceNP();
    }
    X? response = _updateModelToNamedServiceNPFBDS!
        .updateModelToNamedServiceNP<X,C>(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await updateModelToNamedServiceNPDataSource
        .updateModelToNamedServiceNP();
  }

  Future<Z?> _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateModelToNamedServiceParameterNamedDataSource<Z,X> updateModelToNamedServiceParameterNamedDataSource,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(_updateModelToNamedServiceParameterNamedFBDS == null) {
      return await updateModelToNamedServiceParameterNamedDataSource
          .updateModelToNamedServiceParameterNamed(typeParameter);
    }
    Z? response = _updateModelToNamedServiceParameterNamedFBDS!
        .updateModelToNamedServiceParameterNamed<Z,X,C>(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await updateModelToNamedServiceParameterNamedDataSource
        .updateModelToNamedServiceParameterNamed(typeParameter);
  }

  Future<X?> _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateListModelToNamedServiceNPDataSource<X> updateListModelToNamedServiceNPDataSource,
      C? typeParameterForFBDS)
  async {
    if(_updateListModelToNamedServiceNPFBDS == null) {
      return await updateListModelToNamedServiceNPDataSource
          .updateListModelToNamedServiceNP();
    }
    X? response = _updateListModelToNamedServiceNPFBDS!
        .updateListModelToNamedServiceNP<X,C>(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await updateListModelToNamedServiceNPDataSource
        .updateListModelToNamedServiceNP();
  }

  Future<Z?> _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateListModelToNamedServiceParameterNamedDataSource<Z,X> updateListModelToNamedServiceParameterNamedDataSource,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(_updateListModelToNamedServiceParameterNamedFBDS == null) {
      return await updateListModelToNamedServiceParameterNamedDataSource
          .updateListModelToNamedServiceParameterNamed(typeParameter);
    }
    Z? response = _updateListModelToNamedServiceParameterNamedFBDS!
        .updateListModelToNamedServiceParameterNamed<Z,X,C>(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await updateListModelToNamedServiceParameterNamedDataSource
        .updateListModelToNamedServiceParameterNamed(typeParameter);
  }

  Future<X?> _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteModelToNamedServiceNPDataSource<X> deleteModelToNamedServiceNPDataSource,
      C? typeParameterForFBDS)
  async {
    if(_deleteModelToNamedServiceNPFBDS == null) {
      return await deleteModelToNamedServiceNPDataSource
          .deleteModelToNamedServiceNP();
    }
    X? response = _deleteModelToNamedServiceNPFBDS!
        .deleteModelToNamedServiceNP<X,C>(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await deleteModelToNamedServiceNPDataSource
        .deleteModelToNamedServiceNP();
  }

  Future<Z?> _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteModelToNamedServiceParameterNamedDataSource<Z,X> deleteModelToNamedServiceParameterNamedDataSource,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(_deleteModelToNamedServiceParameterNamedFBDS == null) {
      return await deleteModelToNamedServiceParameterNamedDataSource
          .deleteModelToNamedServiceParameterNamed(typeParameter);
    }
    Z? response = _deleteModelToNamedServiceParameterNamedFBDS!
        .deleteModelToNamedServiceParameterNamed<Z,X,C>(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await deleteModelToNamedServiceParameterNamedDataSource
        .deleteModelToNamedServiceParameterNamed(typeParameter);
  }

  Future<X?> _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteListModelToNamedServiceNPDataSource<X> deleteListModelToNamedServiceNPDataSource,
      C? typeParameterForFBDS)
  async {
    if(_deleteListModelToNamedServiceNPFBDS == null) {
      return await deleteListModelToNamedServiceNPDataSource
          .deleteListModelToNamedServiceNP();
    }
    X? response = _deleteListModelToNamedServiceNPFBDS!
        .deleteListModelToNamedServiceNP<X,C>(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await deleteListModelToNamedServiceNPDataSource
        .deleteListModelToNamedServiceNP();
  }

  Future<Z?> _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteListModelToNamedServiceParameterNamedDataSource<Z,X> deleteListModelToNamedServiceParameterNamedDataSource,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(_deleteListModelToNamedServiceParameterNamedFBDS == null) {
      return await deleteListModelToNamedServiceParameterNamedDataSource
          .deleteListModelToNamedServiceParameterNamed(typeParameter);
    }
    Z? response = _deleteListModelToNamedServiceParameterNamedFBDS!
        .deleteListModelToNamedServiceParameterNamed<Z,X,C>(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await deleteListModelToNamedServiceParameterNamedDataSource
        .deleteListModelToNamedServiceParameterNamed(typeParameter);
  }
}