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
  ///   Start ModelQNamedServiceDataSource **/
  ///   Example Using:
  ///
  ///   @protected
  ///   @override
  ///   Object? get modelQNamedServiceDataSource => this;
  @protected
  Object? get modelQNamedServiceDataSource;
  ///   End ModelQNamedServiceDataSource **/

  // Start getListNP 3
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNP()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetListModelFromNamedServiceNPUsingTypeParameterForFBDS<BaseTypeParameter>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>,
        null,
        null);
  }

  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNPUsingFBDS(
      GetListModelFromNamedServiceNPFBDS<Y,BaseTypeParameter> getListModelFromNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetListModelFromNamedServiceNPUsingTypeParameterForFBDS<BaseTypeParameter>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>,
        getListModelFromNamedServiceNPFBDS,
        null);
  }

  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      GetListModelFromNamedServiceNPFBDS<Y,C> getListModelFromNamedServiceNPFBDS,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetListModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>,
        getListModelFromNamedServiceNPFBDS,
        typeParameterForFBDS);
  }
  // End getListNP 3

  // Start getListParameterNamed 3
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamed<X extends BaseTypeParameter>(
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,X>,
        null,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamedUsingFBDS<X extends BaseTypeParameter>(
      GetListModelFromNamedServiceParameterNamedFBDS<Y,X,BaseTypeParameter> getModelFromNamedServiceParameterNamedFBDS,
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,X>,
        getModelFromNamedServiceParameterNamedFBDS,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      GetListModelFromNamedServiceParameterNamedFBDS<Y,X,C> getModelFromNamedServiceParameterNamedFBDS,
      X typeParameter,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,X>,
        getModelFromNamedServiceParameterNamedFBDS,
        typeParameter,
        typeParameterForFBDS);
  }
  // End getListParameterNamed 3

  // Start getNP 3
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNP()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetModelFromNamedServiceNPUsingTypeParameterForFBDS<BaseTypeParameter>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>,
        null,
        null);
  }

  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNPUsingFBDS(
      GetModelFromNamedServiceNPFBDS<T,BaseTypeParameter> getModelFromNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetModelFromNamedServiceNPUsingTypeParameterForFBDS<BaseTypeParameter>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>,
        getModelFromNamedServiceNPFBDS,
        null);
  }

  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      GetModelFromNamedServiceNPFBDS<T,C> getModelFromNamedServiceNPFBDS,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>,
        getModelFromNamedServiceNPFBDS,
        typeParameterForFBDS);
  }
  // End getNP 3

  // Start getParameterNamed 3
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamed<X extends BaseTypeParameter>(
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,X>,
        null,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamedUsingFBDS<X extends BaseTypeParameter>(
      GetModelFromNamedServiceParameterNamedFBDS<T,X,BaseTypeParameter> getModelFromNamedServiceParameterNamedFBDS,
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,X>,
        getModelFromNamedServiceParameterNamedFBDS,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      GetModelFromNamedServiceParameterNamedFBDS<T,X,C> getModelFromNamedServiceParameterNamedFBDS,
      X typeParameter,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseGetModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,X>,
        getModelFromNamedServiceParameterNamedFBDS,
        typeParameter,
        typeParameterForFBDS);
  }
  // End getParameterNamed 3

  // Start insertNP 3
  @protected
  @nonVirtual
  Future<X?> insertModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> insertModelToNamedServiceNPUsingFBDS<X extends BaseTypeParameter>(
      InsertModelToNamedServiceNPFBDS<X,BaseTypeParameter> insertModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource<X>,
        insertModelToNamedServiceNPFBDS,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> insertModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertModelToNamedServiceNPFBDS<X,C> insertModelToNamedServiceNPFBDS,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource<X>,
        insertModelToNamedServiceNPFBDS,
        typeParameterForFBDS);
  }
  // End insertNP 3

  // Start insertParameterNamed 3
  @protected
  @nonVirtual
  Future<Z?> insertModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> insertModelToNamedServiceParameterNamedUsingFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      InsertModelToNamedServiceParameterNamedFBDS<Z,X,BaseTypeParameter> insertModelToNamedServiceParameterNamedFBDS,
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<Z,X>,
        insertModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> insertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertModelToNamedServiceParameterNamedFBDS<Z,X,C> insertModelToNamedServiceParameterNamedFBDS,
      X typeParameter,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<Z,X>,
        insertModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        typeParameterForFBDS);
  }
  // End insertParameterNamed 3

  // Start insertListNP 3
  @protected
  @nonVirtual
  Future<X?> insertListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> insertListModelToNamedServiceNPUsingFBDS<X extends BaseTypeParameter>(
      InsertListModelToNamedServiceNPFBDS<X,BaseTypeParameter> insertListModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource<X>,
        insertListModelToNamedServiceNPFBDS,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> insertListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertListModelToNamedServiceNPFBDS<X,C> insertListModelToNamedServiceNPFBDS,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource<X>,
        insertListModelToNamedServiceNPFBDS,
        typeParameterForFBDS);
  }
  // End insertListNP 3

  // Start insertListParameterNamed 3
  @protected
  @nonVirtual
  Future<Z?> insertListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> insertListModelToNamedServiceParameterNamedUsingFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      InsertListModelToNamedServiceParameterNamedFBDS<Z,X,BaseTypeParameter> insertListModelToNamedServiceParameterNamedFBDS,
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<Z,X>,
        insertListModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> insertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertListModelToNamedServiceParameterNamedFBDS<Z,X,C> insertListModelToNamedServiceParameterNamedFBDS,
      X typeParameter,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<Z,X>,
        insertListModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        typeParameterForFBDS);
  }
  // End insertListParameterNamed 3

  // Start updateNP 3
  @protected
  @nonVirtual
  Future<X?> updateModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> updateModelToNamedServiceNPUsingFBDS<X extends BaseTypeParameter>(
      UpdateModelToNamedServiceNPFBDS<X,BaseTypeParameter> updateModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource<X>,
        updateModelToNamedServiceNPFBDS,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> updateModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateModelToNamedServiceNPFBDS<X,C> updateModelToNamedServiceNPFBDS,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource<X>,
        updateModelToNamedServiceNPFBDS,
        typeParameterForFBDS);
  }
  // End updateNP 3

  // Start updateParameterNamed 3
  @protected
  @nonVirtual
  Future<Z?> updateModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> updateModelToNamedServiceParameterNamedUsingFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      UpdateModelToNamedServiceParameterNamedFBDS<Z,X,BaseTypeParameter> updateModelToNamedServiceParameterNamedFBDS,
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<Z,X>,
        updateModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> updateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateModelToNamedServiceParameterNamedFBDS<Z,X,C> updateModelToNamedServiceParameterNamedFBDS,
      X typeParameter,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<Z,X>,
        updateModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        typeParameterForFBDS);
  }
  // End updateParameterNamed 3

  // Start updateListNP 3
  @protected
  @nonVirtual
  Future<X?> updateListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> updateListModelToNamedServiceNPUsingFBDS<X extends BaseTypeParameter>(
      UpdateListModelToNamedServiceNPFBDS<X,BaseTypeParameter> updateListModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource<X>,
        updateListModelToNamedServiceNPFBDS,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> updateListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateListModelToNamedServiceNPFBDS<X,C> updateListModelToNamedServiceNPFBDS,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource<X>,
        updateListModelToNamedServiceNPFBDS,
        typeParameterForFBDS);
  }
  // End updateListNP 3

  // Start updateListParameterNamed 3
  @protected
  @nonVirtual
  Future<Z?> updateListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> updateListModelToNamedServiceParameterNamedUsingFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      UpdateListModelToNamedServiceParameterNamedFBDS<Z,X,BaseTypeParameter> updateListModelToNamedServiceParameterNamedFBDS,
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<Z,X>,
        updateListModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> updateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateListModelToNamedServiceParameterNamedFBDS<Z,X,C> updateListModelToNamedServiceParameterNamedFBDS,
      X typeParameter,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<Z,X>,
        updateListModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        typeParameterForFBDS);
  }
  // End updateListParameterNamed 3

  // Start deleteNP 3
  @protected
  @nonVirtual
  Future<X?> deleteModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> deleteModelToNamedServiceNPUsingFBDS<X extends BaseTypeParameter>(
      DeleteModelToNamedServiceNPFBDS<X,BaseTypeParameter> deleteModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource<X>,
        deleteModelToNamedServiceNPFBDS,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> deleteModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteModelToNamedServiceNPFBDS<X,C> deleteModelToNamedServiceNPFBDS,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource<X>,
        deleteModelToNamedServiceNPFBDS,
        typeParameterForFBDS);
  }
  // End deleteNP 3

  // Start deleteParameterNamed 3
  @protected
  @nonVirtual
  Future<Z?> deleteModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> deleteModelToNamedServiceParameterNamedUsingFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      DeleteModelToNamedServiceParameterNamedFBDS<Z,X,BaseTypeParameter> deleteModelToNamedServiceParameterNamedFBDS,
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<Z,X>,
        deleteModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> deleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteModelToNamedServiceParameterNamedFBDS<Z,X,C> deleteModelToNamedServiceParameterNamedFBDS,
      X typeParameter,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<Z,X>,
        deleteModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        typeParameterForFBDS);
  }
  // End deleteParameterNamed 3

  // Start deleteListNP 3
  @protected
  @nonVirtual
  Future<X?> deleteListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource<X>,
        null,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> deleteListModelToNamedServiceNPUsingFBDS<X extends BaseTypeParameter>(
      DeleteListModelToNamedServiceNPFBDS<X,BaseTypeParameter> deleteListModelToNamedServiceNPFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource<X>,
        deleteListModelToNamedServiceNPFBDS,
        null);
  }

  @protected
  @nonVirtual
  Future<X?> deleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteListModelToNamedServiceNPFBDS<X,C> deleteListModelToNamedServiceNPFBDS,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource<X>,
        deleteListModelToNamedServiceNPFBDS,
        typeParameterForFBDS);
  }
  // End deleteListNP 3

  // Start deleteListParameterNamed 3
  @protected
  @nonVirtual
  Future<Z?> deleteListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<Z,X>,
        null,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> deleteListModelToNamedServiceParameterNamedUsingFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      DeleteListModelToNamedServiceParameterNamedFBDS<Z,X,BaseTypeParameter> deleteListModelToNamedServiceParameterNamedFBDS,
      X typeParameter)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<Z,X>,
        deleteListModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        null);
  }

  @protected
  @nonVirtual
  Future<Z?> deleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteListModelToNamedServiceParameterNamedFBDS<Z,X,C> deleteListModelToNamedServiceParameterNamedFBDS,
      X typeParameter,
      C typeParameterForFBDS)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<Z,X>,
        deleteListModelToNamedServiceParameterNamedFBDS,
        typeParameter,
        typeParameterForFBDS);
  }
  // End deleteListParameterNamed 3

  Future<Y?> _baseGetListModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      GetListModelFromNamedServiceNPDataSource<Y> getListModelFromNamedServiceNPDataSource,
      GetListModelFromNamedServiceNPFBDS<Y,C>? getListModelFromNamedServiceNPFBDS,
      C? typeParameterForFBDS)
  async {
    if(getListModelFromNamedServiceNPFBDS == null) {
      return await getListModelFromNamedServiceNPDataSource
          .getListModelFromNamedServiceNPDS();
    }
    Y? response = getListModelFromNamedServiceNPFBDS
        .getListModelFromNamedServiceNP(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await getListModelFromNamedServiceNPDataSource
        .getListModelFromNamedServiceNPDS();
  }

  Future<Y?> _baseGetListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      GetListModelFromNamedServiceParameterNamedDataSource<Y,X> getListModelFromNamedServiceParameterNamedDataSource,
      GetListModelFromNamedServiceParameterNamedFBDS<Y,X,C>? getListModelFromNamedServiceParameterNamedFBDS,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(getListModelFromNamedServiceParameterNamedFBDS == null) {
      return await getListModelFromNamedServiceParameterNamedDataSource
          .getListModelFromNamedServiceParameterNamedDS(typeParameter);
    }
    Y? response = getListModelFromNamedServiceParameterNamedFBDS
        .getListModelFromNamedServiceParameterNamed(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await getListModelFromNamedServiceParameterNamedDataSource
        .getListModelFromNamedServiceParameterNamedDS(typeParameter);
  }

  Future<T?> _baseGetModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      GetModelFromNamedServiceNPDataSource<T> getModelFromNamedServiceNPDataSource,
      GetModelFromNamedServiceNPFBDS<T,C>? getModelFromNamedServiceNPFBDS,
      C? typeParameterForFBDS)
  async {
    if(getModelFromNamedServiceNPFBDS == null) {
      return await getModelFromNamedServiceNPDataSource
          .getModelFromNamedServiceNPDS();
    }
    T? response = getModelFromNamedServiceNPFBDS
        .getModelFromNamedServiceNP(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await getModelFromNamedServiceNPDataSource
        .getModelFromNamedServiceNPDS();
  }

  Future<T?> _baseGetModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      GetModelFromNamedServiceParameterNamedDataSource<T,X> getModelFromNamedServiceParameterNamedDataSource,
      GetModelFromNamedServiceParameterNamedFBDS<T,X,C>? getModelFromNamedServiceParameterNamedFBDS,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(getModelFromNamedServiceParameterNamedFBDS == null) {
      return await getModelFromNamedServiceParameterNamedDataSource
          .getModelFromNamedServiceParameterNamedDS(typeParameter);
    }
    T? response = getModelFromNamedServiceParameterNamedFBDS
        .getModelFromNamedServiceParameterNamed(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await getModelFromNamedServiceParameterNamedDataSource
        .getModelFromNamedServiceParameterNamedDS(typeParameter);
  }

  Future<X?> _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertModelToNamedServiceNPDataSource<X> insertModelToNamedServiceNPDataSource,
      InsertModelToNamedServiceNPFBDS<X,C>? insertModelToNamedServiceNPFBDS,
      C? typeParameterForFBDS)
  async {
    if(insertModelToNamedServiceNPFBDS == null) {
      return await insertModelToNamedServiceNPDataSource
          .insertModelToNamedServiceNPDS();
    }
    X? response = insertModelToNamedServiceNPFBDS
        .insertModelToNamedServiceNP(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await insertModelToNamedServiceNPDataSource
        .insertModelToNamedServiceNPDS();
  }

  Future<Z?> _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertModelToNamedServiceParameterNamedDataSource<Z,X> insertModelToNamedServiceParameterNamedDataSource,
      InsertModelToNamedServiceParameterNamedFBDS<Z,X,C>? insertModelToNamedServiceParameterNamedFBDS,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(insertModelToNamedServiceParameterNamedFBDS == null) {
      return await insertModelToNamedServiceParameterNamedDataSource
          .insertModelToNamedServiceParameterNamedDS(typeParameter);
    }
    Z? response = insertModelToNamedServiceParameterNamedFBDS
        .insertModelToNamedServiceParameterNamed(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await insertModelToNamedServiceParameterNamedDataSource
        .insertModelToNamedServiceParameterNamedDS(typeParameter);
  }

  Future<X?> _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertListModelToNamedServiceNPDataSource<X> insertListModelToNamedServiceNPDataSource,
      InsertListModelToNamedServiceNPFBDS<X,C>? insertListModelToNamedServiceNPFBDS,
      C? typeParameterForFBDS)
  async {
    if(insertListModelToNamedServiceNPFBDS == null) {
      return await insertListModelToNamedServiceNPDataSource
          .insertListModelToNamedServiceNPDS();
    }
    X? response = insertListModelToNamedServiceNPFBDS
        .insertListModelToNamedServiceNP(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await insertListModelToNamedServiceNPDataSource
        .insertListModelToNamedServiceNPDS();
  }

  Future<Z?> _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      InsertListModelToNamedServiceParameterNamedDataSource<Z,X> insertListModelToNamedServiceParameterNamedDataSource,
      InsertListModelToNamedServiceParameterNamedFBDS<Z,X,C>? insertListModelToNamedServiceParameterNamedFBDS,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(insertListModelToNamedServiceParameterNamedFBDS == null) {
      return await insertListModelToNamedServiceParameterNamedDataSource
          .insertListModelToNamedServiceParameterNamedDS(typeParameter);
    }
    Z? response = insertListModelToNamedServiceParameterNamedFBDS
        .insertListModelToNamedServiceParameterNamed(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await insertListModelToNamedServiceParameterNamedDataSource
        .insertListModelToNamedServiceParameterNamedDS(typeParameter);
  }

  Future<X?> _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateModelToNamedServiceNPDataSource<X> updateModelToNamedServiceNPDataSource,
      UpdateModelToNamedServiceNPFBDS<X,C>? updateModelToNamedServiceNPFBDS,
      C? typeParameterForFBDS)
  async {
    if(updateModelToNamedServiceNPFBDS == null) {
      return await updateModelToNamedServiceNPDataSource
          .updateModelToNamedServiceNPDS();
    }
    X? response = updateModelToNamedServiceNPFBDS
        .updateModelToNamedServiceNP(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await updateModelToNamedServiceNPDataSource
        .updateModelToNamedServiceNPDS();
  }

  Future<Z?> _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateModelToNamedServiceParameterNamedDataSource<Z,X> updateModelToNamedServiceParameterNamedDataSource,
      UpdateModelToNamedServiceParameterNamedFBDS<Z,X,C>? updateModelToNamedServiceParameterNamedFBDS,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(updateModelToNamedServiceParameterNamedFBDS == null) {
      return await updateModelToNamedServiceParameterNamedDataSource
          .updateModelToNamedServiceParameterNamedDS(typeParameter);
    }
    Z? response = updateModelToNamedServiceParameterNamedFBDS
        .updateModelToNamedServiceParameterNamed(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await updateModelToNamedServiceParameterNamedDataSource
        .updateModelToNamedServiceParameterNamedDS(typeParameter);
  }

  Future<X?> _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateListModelToNamedServiceNPDataSource<X> updateListModelToNamedServiceNPDataSource,
      UpdateListModelToNamedServiceNPFBDS<X,C>? updateListModelToNamedServiceNPFBDS,
      C? typeParameterForFBDS)
  async {
    if(updateListModelToNamedServiceNPFBDS == null) {
      return await updateListModelToNamedServiceNPDataSource
          .updateListModelToNamedServiceNPDS();
    }
    X? response = updateListModelToNamedServiceNPFBDS
        .updateListModelToNamedServiceNP(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await updateListModelToNamedServiceNPDataSource
        .updateListModelToNamedServiceNPDS();
  }

  Future<Z?> _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      UpdateListModelToNamedServiceParameterNamedDataSource<Z,X> updateListModelToNamedServiceParameterNamedDataSource,
      UpdateListModelToNamedServiceParameterNamedFBDS<Z,X,C>? updateListModelToNamedServiceParameterNamedFBDS,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(updateListModelToNamedServiceParameterNamedFBDS == null) {
      return await updateListModelToNamedServiceParameterNamedDataSource
          .updateListModelToNamedServiceParameterNamedDS(typeParameter);
    }
    Z? response = updateListModelToNamedServiceParameterNamedFBDS
        .updateListModelToNamedServiceParameterNamed(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await updateListModelToNamedServiceParameterNamedDataSource
        .updateListModelToNamedServiceParameterNamedDS(typeParameter);
  }

  Future<X?> _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteModelToNamedServiceNPDataSource<X> deleteModelToNamedServiceNPDataSource,
      DeleteModelToNamedServiceNPFBDS<X,C>? deleteModelToNamedServiceNPFBDS,
      C? typeParameterForFBDS)
  async {
    if(deleteModelToNamedServiceNPFBDS == null) {
      return await deleteModelToNamedServiceNPDataSource
          .deleteModelToNamedServiceNPDS();
    }
    X? response = deleteModelToNamedServiceNPFBDS
        .deleteModelToNamedServiceNP(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await deleteModelToNamedServiceNPDataSource
        .deleteModelToNamedServiceNPDS();
  }

  Future<Z?> _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteModelToNamedServiceParameterNamedDataSource<Z,X> deleteModelToNamedServiceParameterNamedDataSource,
      DeleteModelToNamedServiceParameterNamedFBDS<Z,X,C>? deleteModelToNamedServiceParameterNamedFBDS,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(deleteModelToNamedServiceParameterNamedFBDS == null) {
      return await deleteModelToNamedServiceParameterNamedDataSource
          .deleteModelToNamedServiceParameterNamedDS(typeParameter);
    }
    Z? response = deleteModelToNamedServiceParameterNamedFBDS
        .deleteModelToNamedServiceParameterNamed(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await deleteModelToNamedServiceParameterNamedDataSource
        .deleteModelToNamedServiceParameterNamedDS(typeParameter);
  }

  Future<X?> _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteListModelToNamedServiceNPDataSource<X> deleteListModelToNamedServiceNPDataSource,
      DeleteListModelToNamedServiceNPFBDS<X,C>? deleteListModelToNamedServiceNPFBDS,
      C? typeParameterForFBDS)
  async {
    if(deleteListModelToNamedServiceNPFBDS == null) {
      return await deleteListModelToNamedServiceNPDataSource
          .deleteListModelToNamedServiceNPDS();
    }
    X? response = deleteListModelToNamedServiceNPFBDS
        .deleteListModelToNamedServiceNP(typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await deleteListModelToNamedServiceNPDataSource
        .deleteListModelToNamedServiceNPDS();
  }

  Future<Z?> _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      DeleteListModelToNamedServiceParameterNamedDataSource<Z,X> deleteListModelToNamedServiceParameterNamedDataSource,
      DeleteListModelToNamedServiceParameterNamedFBDS<Z,X,C>? deleteListModelToNamedServiceParameterNamedFBDS,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(deleteListModelToNamedServiceParameterNamedFBDS == null) {
      return await deleteListModelToNamedServiceParameterNamedDataSource
          .deleteListModelToNamedServiceParameterNamedDS(typeParameter);
    }
    Z? response = deleteListModelToNamedServiceParameterNamedFBDS
        .deleteListModelToNamedServiceParameterNamed(typeParameter,typeParameterForFBDS);
    if(response!.exceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await deleteListModelToNamedServiceParameterNamedDataSource
        .deleteListModelToNamedServiceParameterNamedDS(typeParameter);
  }
}