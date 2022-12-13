/*
 * Designed and developed by 2022 JacobOdd (Anton Pichka)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'dart:async';
import 'package:flutter/foundation.dart';
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
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class BaseModelQNamedServiceBackgroundModel<T extends BaseModel,Y extends BaseListModel<T>,DataSource extends Object>
{
  /* Init DataSource */
  @protected
  final DataSource? modelQNamedServiceDataSource;

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

  BaseModelQNamedServiceBackgroundModel.thereIsDataSource(this.modelQNamedServiceDataSource);

  ///   Start ThisClass **/
  ///   Example Using:
  ///
  ///   Object thisClass() {
  ///     return this;
  ///   }
  @protected
  Object thisClass();
  ///   End ThisClass **/

  /// Start DataSource **/
  ///
  // start getListNP 2
  @protected
  Future<Y?> getListModelFromNamedServiceNP()
  {
    return _baseGetListModelFromNamedServiceNP(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>);
  }

  @protected
  Future<Y?> getListModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return _baseGetListModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>,
        typeParameterForFBDS);
  }
  // end getListNP 2

  // start getListParameterNamed 2
  @protected
  Future<Y?> getListModelFromNamedServiceParameterNamed<X extends BaseTypeParameter>(
      X? typeParameter)
  {
    return _baseGetListModelFromNamedServiceParameterNamed<X>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,X>,
        typeParameter);
  }

  @protected
  Future<Y?> getListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    return _baseGetListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end getListParameterNamed 2

  // start getNP 2
  @protected
  Future<T?> getModelFromNamedServiceNP()
  {
    return _baseGetModelFromNamedServiceNP(modelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>);
  }

  @protected
  Future<T?> getModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return _baseGetModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>,
        typeParameterForFBDS);
  }
  // end getNP 2

  // start getParameterNamed 2
  @protected
  Future<T?> getModelFromNamedServiceParameterNamed<X extends BaseTypeParameter>(
      X? typeParameter)
  {
    return _baseGetModelFromNamedServiceParameterNamed<X>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,X>,
        typeParameter);
  }

  @protected
  Future<T?> getModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    return _baseGetModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end getParameterNamed 2

  // start insertNP 2
  @protected
  Future<X?> insertModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    return _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  Future<X?> insertModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // end insertNP 2

  // start insertParameterNamed 2
  @protected
  Future<Z?> insertModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    return _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  Future<Z?> insertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    return _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertParameterNamed 2

  // start insertListNP 2
  @protected
  Future<X?> insertListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    return _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  Future<X?> insertListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // end insertListNP 2

  // start insertListParameterNamed 2
  @protected
  Future<Z?> insertListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    return _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  Future<Z?> insertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    return _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertListParameterNamed 2

  // start updateNP 2
  @protected
  Future<X?> updateModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    return _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  Future<X?> updateModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // end updateNP 2

  // start updateParameterNamed 2
  @protected
  Future<Z?> updateModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    return _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  Future<Z?> updateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    return _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateParameterNamed 2

  // start updateListNP 2
  @protected
  Future<X?> updateListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    return _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  Future<X?> updateListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // end updateListNP 2

  // start updateListParameterNamed 2
  @protected
  Future<Z?> updateListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    return _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  Future<Z?> updateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    return _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateListParameterNamed 2

  // start deleteNP 2
  @protected
  Future<X?> deleteModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    return _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  Future<X?> deleteModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // end deleteNP 2

  // start deleteParameterNamed 2
  @protected
  Future<Z?> deleteModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    return _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  Future<Z?> deleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    return _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteParameterNamed 2

  // start deleteListNP 2
  @protected
  Future<X?> deleteListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    return _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource<X>,
        null);
  }

  @protected
  Future<X?> deleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource<X>,
        typeParameterForFBDS);
  }
  // end deleteListNP 2

  // start deleteListParameterNamed 2
  @protected
  Future<Z?> deleteListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    return _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,BaseTypeParameter>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        null);
  }

  @protected
  Future<Z?> deleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    return _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<Z,X>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteListParameterNamed 2
  /// End DataSource **/

  /// Start Setters FBDS **/
  @protected
  @nonVirtual
  set setGetListModelFromNamedServiceNPFBDS(
      GetListModelFromNamedServiceNPFBDS getListModelFromNamedServiceNPFBDS)
  {
    _getListModelFromNamedServiceNPFBDS = getListModelFromNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setGetModelFromNamedServiceNPFBDS(
      GetModelFromNamedServiceNPFBDS getModelFromNamedServiceNPFBDS)
  {
    _getModelFromNamedServiceNPFBDS = getModelFromNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertModelToNamedServiceNPFBDS(
      InsertModelToNamedServiceNPFBDS insertModelToNamedServiceNPFBDS)
  {
    _insertModelToNamedServiceNPFBDS = insertModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedServiceNPFBDS(
      UpdateModelToNamedServiceNPFBDS updateModelToNamedServiceNPFBDS)
  {
    _updateModelToNamedServiceNPFBDS = updateModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedServiceNPFBDS(
      DeleteModelToNamedServiceNPFBDS deleteModelToNamedServiceNPFBDS)
  {
    _deleteModelToNamedServiceNPFBDS = deleteModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedServiceNPFBDS(
      InsertListModelToNamedServiceNPFBDS insertListModelToNamedServiceNPFBDS)
  {
    _insertListModelToNamedServiceNPFBDS = insertListModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedServiceNPFBDS(
      UpdateListModelToNamedServiceNPFBDS updateListModelToNamedServiceNPFBDS)
  {
    _updateListModelToNamedServiceNPFBDS = updateListModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedServiceNPFBDS(
      DeleteListModelToNamedServiceNPFBDS deleteListModelToNamedServiceNPFBDS)
  {
    _deleteListModelToNamedServiceNPFBDS = deleteListModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setGetListModelFromNamedServiceParameterNamedFBDS(
      GetListModelFromNamedServiceParameterNamedFBDS getListModelFromNamedServiceParameterNamedFBDS)
  {
    _getListModelFromNamedServiceParameterNamedFBDS = getListModelFromNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setGetModelFromNamedServiceParameterNamedFBDS(
      GetModelFromNamedServiceParameterNamedFBDS getModelFromNamedServiceParameterNamedFBDS)
  {
    _getModelFromNamedServiceParameterNamedFBDS = getModelFromNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setInsertModelToNamedServiceParameterNamedFBDS(
      InsertModelToNamedServiceParameterNamedFBDS insertModelToNamedServiceParameterNamedFBDS)
  {
    _insertModelToNamedServiceParameterNamedFBDS = insertModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedServiceParameterNamedFBDS(
      UpdateModelToNamedServiceParameterNamedFBDS updateModelToNamedServiceParameterNamedFBDS)
  {
    _updateModelToNamedServiceParameterNamedFBDS = updateModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedServiceParameterNamedFBDS(
      DeleteModelToNamedServiceParameterNamedFBDS deleteModelToNamedServiceParameterNamedFBDS)
  {
    _deleteModelToNamedServiceParameterNamedFBDS = deleteModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedServiceParameterNamedFBDS(
      InsertListModelToNamedServiceParameterNamedFBDS insertListModelToNamedServiceParameterNamedFBDS)
  {
    _insertListModelToNamedServiceParameterNamedFBDS = insertListModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedServiceParameterNamedFBDS(
      UpdateListModelToNamedServiceParameterNamedFBDS updateListModelToNamedServiceParameterNamedFBDS)
  {
    _updateListModelToNamedServiceParameterNamedFBDS = updateListModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedServiceParameterNamedFBDS(
      DeleteListModelToNamedServiceParameterNamedFBDS deleteListModelToNamedServiceParameterNamedFBDS)
  {
    _deleteListModelToNamedServiceParameterNamedFBDS = deleteListModelToNamedServiceParameterNamedFBDS;
  }
  /// End Setters FBDS **/

  Future<Y?> _baseGetListModelFromNamedServiceNP(
      GetListModelFromNamedServiceNPDataSource<Y> getListModelFromNamedServiceNPDataSource)
  {
    return getListModelFromNamedServiceNPDataSource.getListModelFromNamedServiceNP();
  }

  Future<Y?> _baseGetListModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      GetListModelFromNamedServiceNPDataSource<Y> getListModelFromNamedServiceNPDataSource,
      C? typeParameterForFBDS)
  async {
    if(_getListModelFromNamedServiceNPFBDS == null) {
      return await _baseGetListModelFromNamedServiceNP(getListModelFromNamedServiceNPDataSource);
    }
    Y? response = _getListModelFromNamedServiceNPFBDS!
        .getListModelFromNamedServiceNP<Y,C>(typeParameterForFBDS);
    if(response!.getParameterExceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await _baseGetListModelFromNamedServiceNP(getListModelFromNamedServiceNPDataSource);
  }

  Future<Y?> _baseGetListModelFromNamedServiceParameterNamed<X extends BaseTypeParameter>(
      GetListModelFromNamedServiceParameterNamedDataSource<Y,X> getListModelFromNamedServiceParameterNamedDataSource,
      X? typeParameter)
  {
    return getListModelFromNamedServiceParameterNamedDataSource.getListModelFromNamedServiceParameterNamed(typeParameter);
  }

  Future<Y?> _baseGetListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      GetListModelFromNamedServiceParameterNamedDataSource<Y,X> getListModelFromNamedServiceParameterNamedDataSource,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(_getListModelFromNamedServiceParameterNamedFBDS == null) {
      return await _baseGetListModelFromNamedServiceParameterNamed(getListModelFromNamedServiceParameterNamedDataSource,typeParameter);
    }
    Y? response = _getListModelFromNamedServiceParameterNamedFBDS!
        .getListModelFromNamedServiceParameterNamed<Y,X,C>(typeParameter,typeParameterForFBDS);
    if(response!.getParameterExceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await _baseGetListModelFromNamedServiceParameterNamed(getListModelFromNamedServiceParameterNamedDataSource,typeParameter);
  }

  Future<T?> _baseGetModelFromNamedServiceNP(
      GetModelFromNamedServiceNPDataSource<T> getModelFromNamedServiceNPDataSource)
  {
    return getModelFromNamedServiceNPDataSource.getModelFromNamedServiceNP();
  }

  Future<T?> _baseGetModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      GetModelFromNamedServiceNPDataSource<T> getModelFromNamedServiceNPDataSource,
      C? typeParameterForFBDS)
  async {
    if(_getModelFromNamedServiceNPFBDS == null) {
      return await _baseGetModelFromNamedServiceNP(getModelFromNamedServiceNPDataSource);
    }
    T? response = _getModelFromNamedServiceNPFBDS!
        .getModelFromNamedServiceNP<T,C>(typeParameterForFBDS);
    if(response!.getParameterExceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await _baseGetModelFromNamedServiceNP(getModelFromNamedServiceNPDataSource);
  }

  Future<T?> _baseGetModelFromNamedServiceParameterNamed<X extends BaseTypeParameter>(
      GetModelFromNamedServiceParameterNamedDataSource<T,X> getModelFromNamedServiceParameterNamedDataSource,
      X? typeParameter)
  {
    return getModelFromNamedServiceParameterNamedDataSource.getModelFromNamedServiceParameterNamed(typeParameter);
  }

  Future<T?> _baseGetModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      GetModelFromNamedServiceParameterNamedDataSource<T,X> getModelFromNamedServiceParameterNamedDataSource,
      X? typeParameter,
      C? typeParameterForFBDS)
  async {
    if(_getModelFromNamedServiceParameterNamedFBDS == null) {
      return await _baseGetModelFromNamedServiceParameterNamed(getModelFromNamedServiceParameterNamedDataSource,typeParameter);
    }
    T? response = _getModelFromNamedServiceParameterNamedFBDS!
        .getModelFromNamedServiceParameterNamed<T,X,C>(typeParameter,typeParameterForFBDS);
    if(response!.getParameterExceptionController.isExceptionNotEqualsNull()) {
      return response;
    }
    return await _baseGetModelFromNamedServiceParameterNamed(getModelFromNamedServiceParameterNamedDataSource,typeParameter);
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
    return deleteListModelToNamedServiceNPDataSource
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