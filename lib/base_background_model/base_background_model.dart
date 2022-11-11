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
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_list_model_to_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_list_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_list_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_model_to_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_list_model_from_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_list_model_from_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_model_from_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_model_from_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_list_model_to_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_list_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_list_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_model_to_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_list_model_to_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_list_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_list_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/delete_list_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/delete_list_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/delete_list_model_to_named_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/delete_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/delete_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/delete_model_to_named_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/get_list_model_from_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/get_list_model_from_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/get_model_from_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/get_model_from_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/insert_list_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/insert_list_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/insert_list_model_to_named_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/insert_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/insert_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/insert_model_to_named_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/update_list_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/update_list_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/update_list_model_to_named_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/update_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/update_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/abstract_classes_function_before_data_source/update_model_to_named_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_list_model_named.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_model_named.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

abstract class BaseBackgroundModel<T extends BaseModelNamed,Y extends BaseListModelNamed<T>>
{
  /* Init DataSource */
  @protected
  final Object dataSource;

  /* FBDS (Function Before Data Source) */
  InsertModelToNamedTIPFBDS<T,BaseTypeParameter> _insertModelToNamedTIPFBDS;
  InsertListModelToNamedTIPFBDS<Y,BaseTypeParameter> _insertListModelToNamedTIPFBDS;
  UpdateModelToNamedTIPFBDS<T,BaseTypeParameter> _updateModelToNamedTIPFBDS;
  UpdateListModelToNamedTIPFBDS<Y,BaseTypeParameter> _updateListModelToNamedTIPFBDS;
  DeleteModelToNamedTIPFBDS<T,BaseTypeParameter> _deleteModelToNamedTIPFBDS;
  DeleteListModelToNamedTIPFBDS<Y,BaseTypeParameter> _deleteListModelToNamedTIPFBDS;

  GetListModelFromNamedNPFBDS<BaseTypeParameter> _getListModelFromNamedNPFBDS;
  GetModelFromNamedNPFBDS<BaseTypeParameter> _getModelFromNamedNPFBDS;
  InsertModelToNamedNPFBDS<BaseTypeParameter> _insertModelToNamedNPFBDS;
  InsertListModelToNamedNPFBDS<BaseTypeParameter> _insertListModelToNamedDatabaseNPFBDS;
  UpdateModelToNamedNPFBDS<BaseTypeParameter> _updateModelToNamedNPFBDS;
  UpdateListModelToNamedNPFBDS<BaseTypeParameter> _updateListModelToNamedNPFBDS;
  DeleteModelToNamedNPFBDS<BaseTypeParameter> _deleteModelToNamedNPFBDS;
  DeleteListModelToNamedNPFBDS<BaseTypeParameter> _deleteListModelToNamedNPFBDS;

  GetListModelFromNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _getListModelFromNamedParameterNamedFBDS;
  GetModelFromNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _getModelFromNamedParameterNamedFBDS;
  InsertModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _insertModelToNamedParameterNamedFBDS;
  InsertListModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _insertListModelToNamedParameterNamedFBDS;
  UpdateModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _updateModelToNamedParameterNamedFBDS;
  UpdateListModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _updateListModelToNamedParameterNamedFBDS;
  DeleteModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _deleteModelToNamedParameterNamedFBDS;
  DeleteListModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _deleteListModelToNamedParameterNamedFBDS;

  BaseBackgroundModel.thereIsDataSource(this.dataSource);

  DataSource getDataSource<DataSource extends Object>() {
    return dataSource;
  }
  /// Start Clone **/
  ///   Be sure to implement these methods as shown in the example below. The result of all date source methods depends on the implementation of that method.
  ///   Briefly, what this method does: Does not leave a reference to the object that will be sent to the data source and you can do whatever you want with
  ///   it without fear that it will change in the view model. Basically, this method appeared when FBDS (Function Before Data Source) appeared
  ///
  ///   Example Using:
  ///
  ///   User cloneModel(User model) {
  ///     return User(model.uniqueId,model.name);
  ///   }
  ///
  @protected
  T cloneModelNamed(
      T modelNamed);

  @protected
  Y cloneListModelNamed(
      Y listModelNamed);
  /// End Clone **/

  /// Start ThisClass **/
  ///   Example Using:
  ///
  ///   Object thisClass() {
  ///     return this;
  ///   }
  ///
  ///
  @protected
  Object thisClass();
  /// End ThisClass **/

  /// Start DataSource **/
  ///
  // start getListNP 2
  @protected
  Future<Y> getListModelFromNamedNP()
  {
    return _baseGetListModelFromNamedNP(
        dataSource as GetListModelFromNamedNPDataSource<Y>);
  }

  @protected
  Future<Y> getListModelFromNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseGetListModelFromNamedNPUsingTypeParameterForFBDS(
        dataSource as GetListModelFromNamedNPDataSource<Y>,
        typeParameterForFBDS);
  }
  // end getListNP 2

  // start getListParameterNamed 2
  @protected
  Future<Y> getListModelFromNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseGetListModelFromNamedParameterNamed(
        dataSource as GetListModelFromNamedParameterNamedDataSource<Y,BaseTypeParameter>,
        typeParameter);
  }

  @protected
  Future<Y> getListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseGetListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as GetListModelFromNamedParameterNamedDataSource<Y,BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end getListParameterNamed 2

  // start getNP 2
  @protected
  Future<T> getModelFromNamedNP()
  {
    return _baseGetModelFromNamedNP(dataSource as GetModelFromNamedNPDataSource<T>);
  }

  @protected
  Future<T> getModelFromNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseGetModelFromNamedNPUsingTypeParameterForFBDS(
        dataSource as GetModelFromNamedNPDataSource<T>,
        typeParameterForFBDS);
  }
  // end getNP 2

  // start getParameterNamed 2
  @protected
  Future<T> getModelFromNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseGetModelFromNamedParameterNamed(
        dataSource as GetModelFromNamedParameterNamedDataSource<T,BaseTypeParameter>,
        typeParameter);
  }

  @protected
  Future<T> getModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseGetModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as GetModelFromNamedParameterNamedDataSource<T,BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end getParameterNamed 2

  // start insertTIP 2
  @protected
  Future<Response> insertModelToNamedTIP(
      T modelNamed)
  {
    return _baseInsertModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedTIPDataSource<T>,
        modelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedTIPDataSource<T>,
        modelNamed,
        typeParameterForFBDS);
  }
  // end insertTIP 2

  // start insertNP 2
  @protected
  Future<Response> insertModelToNamedNP()
  {
    return _baseInsertModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end insertNP 2

  // start insertParameterNamed 2
  @protected
  Future<Response> insertModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseInsertModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertParameterNamed 2

  // start insertListTIP 2
  @protected
  Future<Response> insertListModelToNamedTIP(
      Y listModelNamed)
  {
    return _baseInsertListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertListModelToNamedTIPUsingTypeParameterForFBDS(
      Y listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        typeParameterForFBDS);
  }
  // end insertListTIP 2

  // start insertListNP 2
  @protected
  Future<Response> insertListModelToNamedNP()
  {
    return _baseInsertListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end insertListNP 2

  // start insertListParameterNamed 2
  @protected
  Future<Response> insertListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseInsertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertListParameterNamed 2

  // start updateTIP 2
  @protected
  Future<Response> updateModelToNamedTIP(
      T modelNamed)
  {
    return _baseUpdateModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedTIPDataSource<T>,
        modelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedTIPDataSource<T>,
        modelNamed,
        typeParameterForFBDS);
  }
  // end updateTIP 2

  // start updateNP 2
  @protected
  Future<Response> updateModelToNamedNP()
  {
    return _baseUpdateModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end updateNP 2

  // start updateParameterNamed 2
  @protected
  Future<Response> updateModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseUpdateModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateParameterNamed 2

  // start updateListTIP 2
  @protected
  Future<Response> updateListModelToNamedTIP(
      Y listModelNamed)
  {
    return _baseUpdateListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateListModelToNamedTIPUsingTypeParameterForFBDS(
      Y listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        typeParameterForFBDS);
  }
  // end updateListTIP 2

  // start updateListNP 2
  @protected
  Future<Response> updateListModelToNamedNP()
  {
    return _baseUpdateListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end updateListNP 2

  // start updateListParameterNamed 2
  @protected
  Future<Response> updateListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseUpdateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateListParameterNamed 2

  // start deleteTIP 2
  @protected
  Future<Response> deleteModelToNamedTIP(
      T modelNamed)
  {
    return _baseDeleteModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedTIPDataSource<T>,
        modelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedTIPDataSource<T>,
        modelNamed,
        typeParameterForFBDS);
  }
  // end deleteTIP 2

  // start deleteNP 2
  @protected
  Future<Response> deleteModelToNamedNP()
  {
    return _baseDeleteModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end deleteNP 2

  // start deleteParameterNamed 2
  @protected
  Future<Response> deleteModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseDeleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteParameterNamed 2

  // start deleteListTIP 2
  @protected
  Future<Response> deleteListModelToNamedTIP(
      Y listModelNamed)
  {
    return _baseDeleteListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as DeleteListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteListModelToNamedTIPUsingTypeParameterForFBDS(
      Y listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as DeleteListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        typeParameterForFBDS);
  }
  // end deleteListTIP 2

  // start deleteListNP 2
  @protected
  Future<Response> deleteListModelToNamedNP()
  {
    return _baseDeleteListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as DeleteListModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as DeleteListModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end deleteListNP 2

  // start deleteListParameterNamed 2
  @protected
  Future<Response> deleteListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseDeleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as DeleteListModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as DeleteListModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteListParameterNamed 2
  /// End DataSource **/

  /// Start Setters FBDS **/
  @protected
  @nonVirtual
  set setInsertModelToNamedTIPFBDS(
      InsertModelToNamedTIPFBDS<T,BaseTypeParameter> insertModelToNamedTIPFBDS)
  {
    _insertModelToNamedTIPFBDS = insertModelToNamedTIPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedTIPFBDS(
      UpdateModelToNamedTIPFBDS<T,BaseTypeParameter> updateModelToNamedTIPFBDS)
  {
    _updateModelToNamedTIPFBDS = updateModelToNamedTIPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedTIPFBDS(
      DeleteModelToNamedTIPFBDS<T,BaseTypeParameter> deleteModelToNamedTIPFBDS)
  {
    _deleteModelToNamedTIPFBDS = deleteModelToNamedTIPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedTIPFBDS(
      InsertListModelToNamedTIPFBDS<Y,BaseTypeParameter> insertListModelToNamedTIPFBDS)
  {
    _insertListModelToNamedTIPFBDS = insertListModelToNamedTIPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedTIPFBDS(
      UpdateListModelToNamedTIPFBDS<Y,BaseTypeParameter> updateListModelToNamedTIPFBDS)
  {
    _updateListModelToNamedTIPFBDS = updateListModelToNamedTIPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedTIPFBDS(
      DeleteListModelToNamedTIPFBDS<Y,BaseTypeParameter> deleteListModelToNamedTIPFBDS)
  {
    _deleteListModelToNamedTIPFBDS = deleteListModelToNamedTIPFBDS;
  }

  @protected
  @nonVirtual
  set setGetListModelFromNamedNPFBDS(
      GetListModelFromNamedNPFBDS<BaseTypeParameter> getListModelFromNamedNPFBDS)
  {
    _getListModelFromNamedNPFBDS = getListModelFromNamedNPFBDS;
  }

  @protected
  @nonVirtual
  set setGetModelFromNamedNPFBDS(
      GetModelFromNamedNPFBDS<BaseTypeParameter> getModelFromNamedNPFBDS)
  {
    _getModelFromNamedNPFBDS = getModelFromNamedNPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertModelToNamedNPFBDS(
      InsertModelToNamedNPFBDS<BaseTypeParameter> insertModelToNamedNPFBDS)
  {
    _insertModelToNamedNPFBDS = insertModelToNamedNPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedNPFBDS(
      UpdateModelToNamedNPFBDS<BaseTypeParameter> updateModelToNamedNPFBDS)
  {
    _updateModelToNamedNPFBDS = updateModelToNamedNPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedNPFBDS(
      DeleteModelToNamedNPFBDS<BaseTypeParameter> deleteModelToNamedNPFBDS)
  {
    _deleteModelToNamedNPFBDS = deleteModelToNamedNPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedNPFBDS(
      InsertListModelToNamedNPFBDS<BaseTypeParameter> insertListModelToNamedNPFBDS)
  {
    _insertListModelToNamedDatabaseNPFBDS = insertListModelToNamedNPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedNPFBDS(
      UpdateListModelToNamedNPFBDS<BaseTypeParameter> updateListModelToNamedNPFBDS)
  {
    _updateListModelToNamedNPFBDS = updateListModelToNamedNPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedNPFBDS(
      DeleteListModelToNamedNPFBDS<BaseTypeParameter> deleteListModelToNamedNPFBDS)
  {
    _deleteListModelToNamedNPFBDS = deleteListModelToNamedNPFBDS;
  }

  @protected
  @nonVirtual
  set setGetListModelFromNamedParameterNamedFBDS(
      GetListModelFromNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> getListModelFromNamedParameterNamedFBDS)
  {
    _getListModelFromNamedParameterNamedFBDS = getListModelFromNamedParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setGetModelFromNamedParameterNamedFBDS(
      GetModelFromNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> getModelFromNamedParameterNamedFBDS)
  {
    _getModelFromNamedParameterNamedFBDS = getModelFromNamedParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setInsertModelToNamedParameterNamedFBDS(
      InsertModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> insertModelToNamedParameterNamedFBDS)
  {
    _insertModelToNamedParameterNamedFBDS = insertModelToNamedParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedParameterNamedFBDS(
      UpdateModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> updateModelToNamedParameterNamedFBDS)
  {
    _updateModelToNamedParameterNamedFBDS = updateModelToNamedParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedParameterNamedFBDS(
      DeleteModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> deleteModelToNamedParameterNamedFBDS)
  {
    _deleteModelToNamedParameterNamedFBDS = deleteModelToNamedParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedParameterNamedFBDS(
      InsertListModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> insertListModelToNamedParameterNamedFBDS)
  {
    _insertListModelToNamedParameterNamedFBDS = insertListModelToNamedParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedParameterNamedFBDS(
      UpdateListModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> updateListModelToNamedParameterNamedFBDS)
  {
    _updateListModelToNamedParameterNamedFBDS = updateListModelToNamedParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedParameterNamedFBDS(
      DeleteListModelToNamedParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> deleteListModelToNamedParameterNamedFBDS)
  {
    _deleteListModelToNamedParameterNamedFBDS = deleteListModelToNamedParameterNamedFBDS;
  }
  /// End Setters FBDS **/

  Future<Y> _baseGetListModelFromNamedNP(
      GetListModelFromNamedNPDataSource<Y> getListModelFromNamedNPDataSource)
  {
    return getListModelFromNamedNPDataSource.getListModelFromNamedNP();
  }

  Future<Y> _baseGetListModelFromNamedNPUsingTypeParameterForFBDS(
      GetListModelFromNamedNPDataSource<Y> getListModelFromNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getListModelFromNamedNPFBDS == null) {
      return await _baseGetListModelFromNamedNP(getListModelFromNamedNPDataSource);
    }
    Response response = _getListModelFromNamedNPFBDS
        .getListModelFromNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      BaseListModelNamed<T> listModelNamed = BaseListModelNamed<T>.exception(response.getException());
      return listModelNamed;
    }
    return await _baseGetListModelFromNamedNP(getListModelFromNamedNPDataSource);
  }

  Future<Y> _baseGetListModelFromNamedParameterNamed(
      GetListModelFromNamedParameterNamedDataSource<Y,BaseTypeParameter> getListModelFromNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter)
  {
    return getListModelFromNamedParameterNamedDataSource.getListModelFromNamedParameterNamed(typeParameter);
  }

  Future<Y> _baseGetListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      GetListModelFromNamedParameterNamedDataSource<Y,BaseTypeParameter> getListModelFromNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getListModelFromNamedParameterNamedFBDS == null) {
      return await _baseGetListModelFromNamedParameterNamed(getListModelFromNamedParameterNamedDataSource,typeParameter);
    }
    Response response = _getListModelFromNamedParameterNamedFBDS
        .getListModelFromNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      BaseListModelNamed<T> listModelNamed = BaseListModelNamed<T>.exception(response.getException());
      return listModelNamed;
    }
    return await _baseGetListModelFromNamedParameterNamed(getListModelFromNamedParameterNamedDataSource,typeParameter);
  }

  Future<T> _baseGetModelFromNamedNP(
      GetModelFromNamedNPDataSource<T> getModelFromNamedNPDataSource)
  {
    return getModelFromNamedNPDataSource.getModelFromNamedNP();
  }

  Future<T> _baseGetModelFromNamedNPUsingTypeParameterForFBDS(
      GetModelFromNamedNPDataSource<T> getModelFromNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getModelFromNamedNPFBDS == null) {
      return await _baseGetModelFromNamedNP(getModelFromNamedNPDataSource);
    }
    Response response = _getModelFromNamedNPFBDS
        .getModelFromNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      BaseModelNamed modelNamed = BaseModelNamed.exception(response.getException());
      return modelNamed;
    }
    return await _baseGetModelFromNamedNP(getModelFromNamedNPDataSource);
  }

  Future<T> _baseGetModelFromNamedParameterNamed(
      GetModelFromNamedParameterNamedDataSource<T,BaseTypeParameter> getModelFromNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter)
  {
    return getModelFromNamedParameterNamedDataSource
        .getModelFromNamedParameterNamed(typeParameter);
  }

  Future<T> _baseGetModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      GetModelFromNamedParameterNamedDataSource<T,BaseTypeParameter> getModelFromNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getModelFromNamedParameterNamedFBDS == null) {
      return await _baseGetModelFromNamedParameterNamed(getModelFromNamedParameterNamedDataSource,typeParameter);
    }
    Response response = _getModelFromNamedParameterNamedFBDS
        .getModelFromNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      BaseModelNamed modelNamed = BaseModelNamed.exception(response.getException());
      return modelNamed;
    }
    return await _baseGetModelFromNamedParameterNamed(getModelFromNamedParameterNamedDataSource,typeParameter);
  }

  Future<Response> _baseInsertModelToNamedTIPUsingTypeParameterForFBDS(
      InsertModelToNamedTIPDataSource<T> insertModelToNamedTIPDataSource,
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    T modelNamedForClone = cloneModelNamed(modelNamed);
    if(_insertModelToNamedTIPFBDS == null) {
      return await insertModelToNamedTIPDataSource
          .insertModelToNamedTIP(modelNamedForClone);
    }
    Response response = _insertModelToNamedTIPFBDS
        .insertModelToNamedTIP(modelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await insertModelToNamedTIPDataSource
        .insertModelToNamedTIP(modelNamedForClone);
  }

  Future<Response> _baseInsertModelToNamedNPUsingTypeParameterForFBDS(
      InsertModelToNamedNPDataSource insertModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertModelToNamedNPFBDS == null) {
      return await insertModelToNamedNPDataSource
          .insertModelToNamedNP();
    }
    Response response = _insertModelToNamedNPFBDS
        .insertModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await insertModelToNamedNPDataSource
        .insertModelToNamedNP();
  }

  Future<Response> _baseInsertModelToNamedParameterNamedUsingTypeParameterForFBDS(
      InsertModelToNamedParameterNamedDataSource<BaseTypeParameter> insertModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertModelToNamedParameterNamedFBDS == null) {
      return await insertModelToNamedParameterNamedDataSource
          .insertModelToNamedParameterNamed(typeParameter);
    }
    Response response = _insertModelToNamedParameterNamedFBDS
        .insertModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await insertModelToNamedParameterNamedDataSource
        .insertModelToNamedParameterNamed(typeParameter);
  }

  Future<Response> _baseInsertListModelToNamedTIPUsingTypeParameterForFBDS(
      InsertListModelToNamedTIPDataSource<Y> insertListModelToNamedTIPDataSource,
      Y listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Y listModelNamedForClone = cloneListModelNamed(listModelNamed);
    if(_insertListModelToNamedTIPFBDS == null) {
      return await insertListModelToNamedTIPDataSource
          .insertListModelToNamedTIP(listModelNamedForClone);
    }
    Response response = _insertListModelToNamedTIPFBDS
        .insertListModelToNamedTIP(listModelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await insertListModelToNamedTIPDataSource
        .insertListModelToNamedTIP(listModelNamedForClone);
  }

  Future<Response> _baseInsertListModelToNamedNPUsingTypeParameterForFBDS(
      InsertListModelToNamedNPDataSource insertListModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertListModelToNamedDatabaseNPFBDS == null) {
      return await insertListModelToNamedNPDataSource
          .insertListModelToNamedNP();
    }
    Response response = _insertListModelToNamedDatabaseNPFBDS
        .insertListModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await insertListModelToNamedNPDataSource
        .insertListModelToNamedNP();
  }

  Future<Response> _baseInsertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      InsertListModelToNamedParameterNamedDataSource<BaseTypeParameter> insertListModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertListModelToNamedParameterNamedFBDS == null) {
      return await insertListModelToNamedParameterNamedDataSource
          .insertListModelToNamedParameterNamed(typeParameter);
    }
    Response response = _insertListModelToNamedParameterNamedFBDS
        .insertListModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await insertListModelToNamedParameterNamedDataSource
        .insertListModelToNamedParameterNamed(typeParameter);
  }

  Future<Response> _baseUpdateModelToNamedTIPUsingTypeParameterForFBDS(
      UpdateModelToNamedTIPDataSource<T> updateModelToNamedTIPDataSource,
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    T modelNamedForClone = cloneModelNamed(modelNamed);
    if(_updateModelToNamedTIPFBDS == null) {
      return await updateModelToNamedTIPDataSource
          .updateModelToNamedTIP(modelNamedForClone);
    }
    Response response = _updateModelToNamedTIPFBDS
        .updateModelToNamedTIP(modelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await updateModelToNamedTIPDataSource
        .updateModelToNamedTIP(modelNamedForClone);
  }

  Future<Response> _baseUpdateModelToNamedNPUsingTypeParameterForFBDS(
      UpdateModelToNamedNPDataSource updateModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateModelToNamedNPFBDS == null) {
      return await updateModelToNamedNPDataSource
          .updateModelToNamedNP();
    }
    Response response = _updateModelToNamedNPFBDS
        .updateModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await updateModelToNamedNPDataSource
        .updateModelToNamedNP();
  }

  Future<Response> _baseUpdateModelToNamedParameterNamedUsingTypeParameterForFBDS(
      UpdateModelToNamedParameterNamedDataSource<BaseTypeParameter> updateModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateModelToNamedParameterNamedFBDS == null) {
      return await updateModelToNamedParameterNamedDataSource
          .updateModelToNamedParameterNamed(typeParameter);
    }
    Response response = _updateModelToNamedParameterNamedFBDS
        .updateModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await updateModelToNamedParameterNamedDataSource
        .updateModelToNamedParameterNamed(typeParameter);
  }

  Future<Response> _baseUpdateListModelToNamedTIPUsingTypeParameterForFBDS(
      UpdateListModelToNamedTIPDataSource<Y> updateListModelToNamedTIPDataSource,
      Y listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Y listModelNamedForClone = cloneListModelNamed(listModelNamed);
    if(_updateListModelToNamedTIPFBDS == null) {
      return await updateListModelToNamedTIPDataSource
          .updateListModelToNamedTIP(listModelNamedForClone);
    }
    Response response = _updateListModelToNamedTIPFBDS
        .updateListModelToNamedTIP(listModelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await updateListModelToNamedTIPDataSource
        .updateListModelToNamedTIP(listModelNamedForClone);
  }

  Future<Response> _baseUpdateListModelToNamedNPUsingTypeParameterForFBDS(
      UpdateListModelToNamedNPDataSource updateListModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateListModelToNamedNPFBDS == null) {
      return await updateListModelToNamedNPDataSource
          .updateListModelToNamedNP();
    }
    Response response = _updateListModelToNamedNPFBDS
        .updateListModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await updateListModelToNamedNPDataSource
        .updateListModelToNamedNP();
  }

  Future<Response> _baseUpdateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      UpdateListModelToNamedParameterNamedDataSource<BaseTypeParameter> updateListModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateListModelToNamedParameterNamedFBDS == null) {
      return await updateListModelToNamedParameterNamedDataSource
          .updateListModelToNamedParameterNamed(typeParameter);
    }
    Response response = _updateListModelToNamedParameterNamedFBDS
        .updateListModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await updateListModelToNamedParameterNamedDataSource
        .updateListModelToNamedParameterNamed(typeParameter);
  }

  Future<Response> _baseDeleteModelToNamedTIPUsingTypeParameterForFBDS(
      DeleteModelToNamedTIPDataSource<T> deleteModelToNamedTIPDataSource,
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    T modelNamedForClone = cloneModelNamed(modelNamed);
    if(_deleteModelToNamedTIPFBDS == null) {
      return await deleteModelToNamedTIPDataSource
          .deleteModelToNamedTIP(modelNamedForClone);
    }
    Response response = _deleteModelToNamedTIPFBDS
        .deleteModelToNamedTIP(modelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await deleteModelToNamedTIPDataSource
        .deleteModelToNamedTIP(modelNamedForClone);
  }

  Future<Response> _baseDeleteModelToNamedNPUsingTypeParameterForFBDS(
      DeleteModelToNamedNPDataSource deleteModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteModelToNamedNPFBDS == null) {
      return await deleteModelToNamedNPDataSource
          .deleteModelToNamedNP();
    }
    Response response = _deleteModelToNamedNPFBDS
        .deleteModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await deleteModelToNamedNPDataSource
        .deleteModelToNamedNP();
  }

  Future<Response> _baseDeleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
      DeleteModelToNamedParameterNamedDataSource<BaseTypeParameter> deleteModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteModelToNamedParameterNamedFBDS == null) {
      return await deleteModelToNamedParameterNamedDataSource
          .deleteModelToNamedParameterNamed(typeParameter);
    }
    Response response = _deleteModelToNamedParameterNamedFBDS
        .deleteModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await deleteModelToNamedParameterNamedDataSource
        .deleteModelToNamedParameterNamed(typeParameter);
  }

  Future<Response> _baseDeleteListModelToNamedTIPUsingTypeParameterForFBDS(
      DeleteListModelToNamedTIPDataSource<Y> deleteListModelToNamedTIPDataSource,
      Y listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Y listModelNamedForClone = cloneListModelNamed(listModelNamed);
    if(_deleteListModelToNamedTIPFBDS == null) {
      return await deleteListModelToNamedTIPDataSource
          .deleteListModelToNamedTIP(listModelNamedForClone);
    }
    Response response = _deleteListModelToNamedTIPFBDS
        .deleteListModelToNamedTIP(listModelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await deleteListModelToNamedTIPDataSource
        .deleteListModelToNamedTIP(listModelNamedForClone);
  }

  Future<Response> _baseDeleteListModelToNamedNPUsingTypeParameterForFBDS(
      DeleteListModelToNamedNPDataSource deleteListModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteListModelToNamedNPFBDS == null) {
      return await deleteListModelToNamedNPDataSource
          .deleteListModelToNamedNP();
    }
    Response response = _deleteListModelToNamedNPFBDS
        .deleteListModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return deleteListModelToNamedNPDataSource
        .deleteListModelToNamedNP();
  }

  Future<Response> _baseDeleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      DeleteListModelToNamedParameterNamedDataSource<BaseTypeParameter> deleteListModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteListModelToNamedParameterNamedFBDS == null) {
      return await deleteListModelToNamedParameterNamedDataSource
          .deleteListModelToNamedParameterNamed(typeParameter);
    }
    Response response = _deleteListModelToNamedParameterNamedFBDS
        .deleteListModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return response;
    }
    return await deleteListModelToNamedParameterNamedDataSource
        .deleteListModelToNamedParameterNamed(typeParameter);
  }
}