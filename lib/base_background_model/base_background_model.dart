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

import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_list_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_list_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_list_model_to_named_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/get_list_model_from_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/get_list_model_from_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/get_model_from_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/get_model_from_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_list_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_list_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_list_model_to_named_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_model_to_named_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_list_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_list_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_list_model_to_named_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_model_to_named_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_model_to_named_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_model_to_named_tip_fbds.dart';
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
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_list_model_named.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';
import 'package:library_architecture_mvvm_modify/response/response_generic_bool_and_local_exception_and_cancel_owe_and_s.dart';

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
  @nonVirtual
  List<T> cloneListModelNamed(
      List<T> listModelNamed)
  {
    if(listModelNamed.isEmpty) {
      return [];
    }
    List<T> listModelNamedForCopy = List.empty(growable: true);
    listModelNamedForCopy.addAll(listModelNamed);
    return listModelNamedForCopy;
  }
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
  Future<Response<List<T>, BaseException>> getListModelFromNamedNP()
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetListModelFromNamedNP(dataSource as GetListModelFromNamedNPDataSource<Y>);
  }

  @protected
  Future<Response<List<T>, BaseException>> getListModelFromNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetListModelFromNamedNPUsingTypeParameterForFBDS(
        dataSource as GetListModelFromNamedNPDataSource<Y>,
        typeParameterForFBDS);
  }
  // end getListNP 2

  // start getListParameterNamed 2
  @protected
  Future<Response<List<T>, BaseException>> getListModelFromNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetListModelFromNamedParameterNamed(
        dataSource as GetListModelFromNamedParameterNamedDataSource<Y,BaseTypeParameter>,
        typeParameter);
  }

  @protected
  Future<Response<List<T>, BaseException>> getListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as GetListModelFromNamedParameterNamedDataSource<Y,BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end getListParameterNamed 2

  // start getNP 2
  @protected
  Future<Response<T, BaseException>> getModelFromNamedNP()
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetModelFromNamedNP(dataSource as GetModelFromNamedNPDataSource<T>);
  }

  @protected
  Future<Response<T, BaseException>> getModelFromNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetModelFromNamedNPUsingTypeParameterForFBDS(
        dataSource as GetModelFromNamedNPDataSource<T>,
        typeParameterForFBDS);
  }
  // end getNP 2

  // start getParameterNamed 2
  @protected
  Future<Response<T, BaseException>> getModelFromNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetModelFromNamedParameterNamed(
        dataSource as GetModelFromNamedParameterNamedDataSource<T,BaseTypeParameter>,
        typeParameter);
  }

  @protected
  Future<Response<T, BaseException>> getModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as GetModelFromNamedParameterNamedDataSource<T,BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end getParameterNamed 2

  // start insertTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedTIP(
      T modelNamed)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedTIPDataSource<T>,
        modelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedTIPDataSource<T>,
        modelNamed,
        typeParameterForFBDS);
  }
  // end insertTIP 2

  // start insertNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedNP()
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end insertNP 2

  // start insertParameterNamed 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as InsertModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertParameterNamed 2

  // start insertListTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedTIP(
      List<T> listModelNamed)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedTIPUsingTypeParameterForFBDS(
      List<T> listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        typeParameterForFBDS);
  }
  // end insertListTIP 2

  // start insertListNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedNP()
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end insertListNP 2

  // start insertListParameterNamed 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as InsertListModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertListParameterNamed 2

  // start updateTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedTIP(
      T modelNamed)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedTIPDataSource<T>,
        modelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedTIPDataSource<T>,
        modelNamed,
        typeParameterForFBDS);
  }
  // end updateTIP 2

  // start updateNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedNP()
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end updateNP 2

  // start updateParameterNamed 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as UpdateModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateParameterNamed 2

  // start updateListTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedTIP(
      List<T> listModelNamed)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedTIPUsingTypeParameterForFBDS(
      List<T> listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        typeParameterForFBDS);
  }
  // end updateListTIP 2

  // start updateListNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedNP()
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end updateListNP 2

  // start updateListParameterNamed 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as UpdateListModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateListParameterNamed 2

  // start deleteTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedTIP(
      T modelNamed)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedTIPDataSource<T>,
        modelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedTIPDataSource<T>,
        modelNamed,
        typeParameterForFBDS);
  }
  // end deleteTIP 2

  // start deleteNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedNP()
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end deleteNP 2

  // start deleteParameterNamed 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as DeleteModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteParameterNamed 2

  // start deleteListTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedTIP(
      List<T> listModelNamed)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as DeleteListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedTIPUsingTypeParameterForFBDS(
      List<T> listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedTIPUsingTypeParameterForFBDS(
        dataSource as DeleteListModelToNamedTIPDataSource<Y>,
        listModelNamed,
        typeParameterForFBDS);
  }
  // end deleteListTIP 2

  // start deleteListNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedNP()
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as DeleteListModelToNamedNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedNPUsingTypeParameterForFBDS(
        dataSource as DeleteListModelToNamedNPDataSource,
        typeParameterForFBDS);
  }
  // end deleteListNP 2

  // start deleteListParameterNamed 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        dataSource as DeleteListModelToNamedParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
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

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedNP(
      GetListModelFromNamedNPDataSource<Y> getListModelFromNamedNPDataSource)
  async {
    Response<Y,BaseException> response = await getListModelFromNamedNPDataSource
        .getListModelFromNamedNP();
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return Response.success(response.getData.listModelNamed);
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedNPUsingTypeParameterForFBDS(
      GetListModelFromNamedNPDataSource<Y> getListModelFromNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getListModelFromNamedNPFBDS == null) {
      return await _baseGetListModelFromNamedNP(getListModelFromNamedNPDataSource);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _getListModelFromNamedNPFBDS
        .getListModelFromNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await _baseGetListModelFromNamedNP(getListModelFromNamedNPDataSource);
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedParameterNamed(
      GetListModelFromNamedParameterNamedDataSource<Y,BaseTypeParameter> getListModelFromNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter)
  async {
    Response<Y,BaseException> response = await getListModelFromNamedParameterNamedDataSource
        .getListModelFromNamedParameterNamed(typeParameter);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return Response.success(response.getData.listModelNamed);
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      GetListModelFromNamedParameterNamedDataSource<Y,BaseTypeParameter> getListModelFromNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getListModelFromNamedParameterNamedFBDS == null) {
      return await _baseGetListModelFromNamedParameterNamed(getListModelFromNamedParameterNamedDataSource,typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _getListModelFromNamedParameterNamedFBDS
        .getListModelFromNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await _baseGetListModelFromNamedParameterNamed(getListModelFromNamedParameterNamedDataSource,typeParameter);
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedNP(
      GetModelFromNamedNPDataSource<T> getModelFromNamedNPDataSource)
  async {
    Response<T,BaseException> response = await getModelFromNamedNPDataSource
        .getModelFromNamedNP();
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return Response.success(response.getData);
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedNPUsingTypeParameterForFBDS(
      GetModelFromNamedNPDataSource<T> getModelFromNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getModelFromNamedNPFBDS == null) {
      return await _baseGetModelFromNamedNP(getModelFromNamedNPDataSource);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _getModelFromNamedNPFBDS
        .getModelFromNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await _baseGetModelFromNamedNP(getModelFromNamedNPDataSource);
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedParameterNamed(
      GetModelFromNamedParameterNamedDataSource<T,BaseTypeParameter> getModelFromNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter)
  async {
    Response<T,BaseException> response = await getModelFromNamedParameterNamedDataSource
        .getModelFromNamedParameterNamed(typeParameter);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return Response.success(response.getData);
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      GetModelFromNamedParameterNamedDataSource<T,BaseTypeParameter> getModelFromNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getModelFromNamedParameterNamedFBDS == null) {
      return await _baseGetModelFromNamedParameterNamed(getModelFromNamedParameterNamedDataSource,typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _getModelFromNamedParameterNamedFBDS
        .getModelFromNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await _baseGetModelFromNamedParameterNamed(getModelFromNamedParameterNamedDataSource,typeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedTIPUsingTypeParameterForFBDS(
      InsertModelToNamedTIPDataSource<T> insertModelToNamedTIPDataSource,
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    T modelNamedForClone = cloneModelNamed(modelNamed);
    if(_insertModelToNamedTIPFBDS == null) {
      return await insertModelToNamedTIPDataSource
          .insertModelToNamedTIP(modelNamedForClone);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _insertModelToNamedTIPFBDS
        .insertModelToNamedTIP(modelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await insertModelToNamedTIPDataSource
        .insertModelToNamedTIP(modelNamedForClone);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedNPUsingTypeParameterForFBDS(
      InsertModelToNamedNPDataSource insertModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertModelToNamedNPFBDS == null) {
      return await insertModelToNamedNPDataSource
          .insertModelToNamedNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _insertModelToNamedNPFBDS
        .insertModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await insertModelToNamedNPDataSource
        .insertModelToNamedNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedParameterNamedUsingTypeParameterForFBDS(
      InsertModelToNamedParameterNamedDataSource<BaseTypeParameter> insertModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertModelToNamedParameterNamedFBDS == null) {
      return await insertModelToNamedParameterNamedDataSource
          .insertModelToNamedParameterNamed(typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _insertModelToNamedParameterNamedFBDS
        .insertModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await insertModelToNamedParameterNamedDataSource
        .insertModelToNamedParameterNamed(typeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedTIPUsingTypeParameterForFBDS(
      InsertListModelToNamedTIPDataSource<Y> insertListModelToNamedTIPDataSource,
      List<T> listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    BaseListModelNamed<T> listModelNamedForClone = BaseListModelNamed(cloneListModelNamed(listModelNamed));
    if(_insertListModelToNamedTIPFBDS == null) {
      return await insertListModelToNamedTIPDataSource
          .insertListModelToNamedTIP(listModelNamedForClone);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _insertListModelToNamedTIPFBDS
        .insertListModelToNamedTIP(listModelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await insertListModelToNamedTIPDataSource
        .insertListModelToNamedTIP(listModelNamedForClone);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedNPUsingTypeParameterForFBDS(
      InsertListModelToNamedNPDataSource insertListModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertListModelToNamedDatabaseNPFBDS == null) {
      return await insertListModelToNamedNPDataSource
          .insertListModelToNamedNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _insertListModelToNamedDatabaseNPFBDS
        .insertListModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await insertListModelToNamedNPDataSource
        .insertListModelToNamedNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      InsertListModelToNamedParameterNamedDataSource<BaseTypeParameter> insertListModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertListModelToNamedParameterNamedFBDS == null) {
      return await insertListModelToNamedParameterNamedDataSource
          .insertListModelToNamedParameterNamed(typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _insertListModelToNamedParameterNamedFBDS
        .insertListModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await insertListModelToNamedParameterNamedDataSource
        .insertListModelToNamedParameterNamed(typeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedTIPUsingTypeParameterForFBDS(
      UpdateModelToNamedTIPDataSource<T> updateModelToNamedTIPDataSource,
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    T modelNamedForClone = cloneModelNamed(modelNamed);
    if(_updateModelToNamedTIPFBDS == null) {
      return await updateModelToNamedTIPDataSource
          .updateModelToNamedTIP(modelNamedForClone);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateModelToNamedTIPFBDS
        .updateModelToNamedTIP(modelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateModelToNamedTIPDataSource
        .updateModelToNamedTIP(modelNamedForClone);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedNPUsingTypeParameterForFBDS(
      UpdateModelToNamedNPDataSource updateModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateModelToNamedNPFBDS == null) {
      return await updateModelToNamedNPDataSource
          .updateModelToNamedNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateModelToNamedNPFBDS
        .updateModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateModelToNamedNPDataSource
        .updateModelToNamedNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedParameterNamedUsingTypeParameterForFBDS(
      UpdateModelToNamedParameterNamedDataSource<BaseTypeParameter> updateModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateModelToNamedParameterNamedFBDS == null) {
      return await updateModelToNamedParameterNamedDataSource
          .updateModelToNamedParameterNamed(typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateModelToNamedParameterNamedFBDS
        .updateModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateModelToNamedParameterNamedDataSource
        .updateModelToNamedParameterNamed(typeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedTIPUsingTypeParameterForFBDS(
      UpdateListModelToNamedTIPDataSource<Y> updateListModelToNamedTIPDataSource,
      List<T> listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    BaseListModelNamed<T> listModelNamedForClone = BaseListModelNamed<T>(cloneListModelNamed(listModelNamed));
    if(_updateListModelToNamedTIPFBDS == null) {
      return await updateListModelToNamedTIPDataSource
          .updateListModelToNamedTIP(listModelNamedForClone);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateListModelToNamedTIPFBDS
        .updateListModelToNamedTIP(listModelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateListModelToNamedTIPDataSource
        .updateListModelToNamedTIP(listModelNamedForClone);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedNPUsingTypeParameterForFBDS(
      UpdateListModelToNamedNPDataSource updateListModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateListModelToNamedNPFBDS == null) {
      return await updateListModelToNamedNPDataSource
          .updateListModelToNamedNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateListModelToNamedNPFBDS
        .updateListModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateListModelToNamedNPDataSource
        .updateListModelToNamedNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      UpdateListModelToNamedParameterNamedDataSource<BaseTypeParameter> updateListModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateListModelToNamedParameterNamedFBDS == null) {
      return await updateListModelToNamedParameterNamedDataSource
          .updateListModelToNamedParameterNamed(typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateListModelToNamedParameterNamedFBDS
        .updateListModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateListModelToNamedParameterNamedDataSource
        .updateListModelToNamedParameterNamed(typeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedTIPUsingTypeParameterForFBDS(
      DeleteModelToNamedTIPDataSource<T> deleteModelToNamedTIPDataSource,
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    T modelNamedForClone = cloneModelNamed(modelNamed);
    if(_deleteModelToNamedTIPFBDS == null) {
      return await deleteModelToNamedTIPDataSource
          .deleteModelToNamedTIP(modelNamedForClone);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteModelToNamedTIPFBDS
        .deleteModelToNamedTIP(modelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await deleteModelToNamedTIPDataSource
        .deleteModelToNamedTIP(modelNamedForClone);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedNPUsingTypeParameterForFBDS(
      DeleteModelToNamedNPDataSource deleteModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteModelToNamedNPFBDS == null) {
      return await deleteModelToNamedNPDataSource
          .deleteModelToNamedNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteModelToNamedNPFBDS
        .deleteModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await deleteModelToNamedNPDataSource
        .deleteModelToNamedNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
      DeleteModelToNamedParameterNamedDataSource<BaseTypeParameter> deleteModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteModelToNamedParameterNamedFBDS == null) {
      return await deleteModelToNamedParameterNamedDataSource
          .deleteModelToNamedParameterNamed(typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteModelToNamedParameterNamedFBDS
        .deleteModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await deleteModelToNamedParameterNamedDataSource
        .deleteModelToNamedParameterNamed(typeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedTIPUsingTypeParameterForFBDS(
      DeleteListModelToNamedTIPDataSource<Y> deleteListModelToNamedTIPDataSource,
      List<T> listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  async {
    BaseListModelNamed<T> listModelNamedForClone = BaseListModelNamed<T>(cloneListModelNamed(listModelNamed));
    if(_deleteListModelToNamedTIPFBDS == null) {
      return await deleteListModelToNamedTIPDataSource
          .deleteListModelToNamedTIP(listModelNamedForClone);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteListModelToNamedTIPFBDS
        .deleteListModelToNamedTIP(listModelNamedForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await deleteListModelToNamedTIPDataSource
        .deleteListModelToNamedTIP(listModelNamedForClone);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedNPUsingTypeParameterForFBDS(
      DeleteListModelToNamedNPDataSource deleteListModelToNamedNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteListModelToNamedNPFBDS == null) {
      return await deleteListModelToNamedNPDataSource
          .deleteListModelToNamedNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteListModelToNamedNPFBDS
        .deleteListModelToNamedNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return deleteListModelToNamedNPDataSource
        .deleteListModelToNamedNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      DeleteListModelToNamedParameterNamedDataSource<BaseTypeParameter> deleteListModelToNamedParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteListModelToNamedParameterNamedFBDS == null) {
      return await deleteListModelToNamedParameterNamedDataSource
          .deleteListModelToNamedParameterNamed(typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteListModelToNamedParameterNamedFBDS
        .deleteListModelToNamedParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await deleteListModelToNamedParameterNamedDataSource
        .deleteListModelToNamedParameterNamed(typeParameter);
  }
}