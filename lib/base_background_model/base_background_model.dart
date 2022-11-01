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
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_list_model_to_named_database_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_list_model_to_named_database_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_list_model_to_named_database_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_database_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_database_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_database_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/get_list_model_from_named_database_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/get_list_model_from_named_database_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/get_model_from_named_database_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/get_model_from_named_database_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_list_model_to_named_database_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_list_model_to_named_database_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_model_to_named_database_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_model_to_named_database_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_list_model_to_named_database_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_list_model_to_named_database_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_list_model_to_named_database_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_model_to_named_database_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_model_to_named_database_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_model_to_named_database_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';
import 'package:library_architecture_mvvm_modify/response/response_generic_bool_and_local_exception_and_cancel_owe_and_s.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseBackgroundModel<T extends BaseModel,Y extends BaseListModel<T>,Z extends BaseModelNamedDatabase<T>,X extends BaseListModelNamedDatabase<Y,Z>>
{
  /* CTMND (Converter To Model Named Database) */
  final ConverterToBaseModelNamedDatabase<T,Z> _converterToBaseModelNamedDatabase;
  final ConverterToBaseListModelNamedDatabase<Y,X> _converterToBaseListModelNamedDatabase;

  /* Init DataSource */
  Object _dataSource;

  /* FBDS (Function Before Data Source) */
  InsertModelToNamedDatabaseTIPFBDS<T,BaseTypeParameter> _insertModelToNamedDatabaseTIPFBDS;
  InsertListModelToNamedDatabaseTIPFBDS<T,Y,BaseTypeParameter> _insertListModelToNamedDatabaseTIPFBDS;
  UpdateModelToNamedDatabaseTIPFBDS<T,BaseTypeParameter> _updateModelToNamedDatabaseTIPFBDS;
  UpdateListModelToNamedDatabaseTIPFBDS<T,Y,BaseTypeParameter> _updateListModelToNamedDatabaseTIPFBDS;
  DeleteModelToNamedDatabaseTIPFBDS<T,BaseTypeParameter> _deleteModelToNamedDatabaseTIPFBDS;
  DeleteListModelToNamedDatabaseTIPFBDS<T,Y,BaseTypeParameter> _deleteListModelToNamedDatabaseTIPFBDS;

  GetListModelFromNamedDatabaseNPFBDS _getListModelFromNamedDatabaseNPFBDS;
  GetModelFromNamedDatabaseNPFBDS _getModelFromNamedDatabaseNPFBDS;
  InsertModelToNamedDatabaseNPFBDS _insertModelToNamedDatabaseNPFBDS;
  InsertListModelToNamedDatabaseNPFBDS _insertListModelToNamedDatabaseNPFBDS;
  UpdateModelToNamedDatabaseNPFBDS _updateModelToNamedDatabaseNPFBDS;
  UpdateListModelToNamedDatabaseNPFBDS _updateListModelToNamedDatabaseNPFBDS;
  DeleteModelToNamedDatabaseNPFBDS _deleteModelToNamedDatabaseNPFBDS;
  DeleteListModelToNamedDatabaseNPFBDS _deleteListModelToNamedDatabaseNPFBDS;

  GetListModelFromNamedDatabaseParameterNamedFBDS _getListModelFromNamedDatabaseParameterNamedFBDS;
  GetModelFromNamedDatabaseParameterNamedFBDS _getModelFromNamedDatabaseParameterNamedFBDS;
  UpdateModelToNamedDatabaseParameterNamedFBDS _updateModelToNamedDatabaseParameterNamedFBDS;
  UpdateListModelToNamedDatabaseParameterNamedFBDS _updateListModelToNamedDatabaseParameterNamedFBDS;
  DeleteModelToNamedDatabaseParameterNamedFBDS _deleteModelToNamedDatabaseParameterNamedFBDS;
  DeleteListModelToNamedDatabaseParameterNamedFBDS _deleteListModelToNamedDatabaseParameterNamedFBDS;

  BaseBackgroundModel.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor(
      this._converterToBaseModelNamedDatabase,
      this._converterToBaseListModelNamedDatabase);

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
  T cloneModel(
      T model);

  @protected
  @nonVirtual
  List<T> cloneListModel(
      List<T> listModel)
  {
    if(listModel.isEmpty) {
      return [];
    }
    List<T> listModelForCopy = List.empty(growable: true);
    listModelForCopy.addAll(listModel);
    return listModelForCopy;
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
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseNP(_dataSource as GetListModelFromNamedDatabaseNPDataSource<X>);
  }

  @protected
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as GetListModelFromNamedDatabaseNPDataSource<X>,
        typeParameterForFBDS);
  }
  // end getListNP 2

  // start getListParameterNamed 2
  @protected
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseParameterNamed(
        _dataSource as GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>,
        typeParameter);
  }

  @protected
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        _dataSource as GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end getListParameterNamed 2

  // start getNP 2
  @protected
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseNP(_dataSource as GetModelFromNamedDatabaseNPDataSource<Z>);
  }

  @protected
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as GetModelFromNamedDatabaseNPDataSource<Z>,
        typeParameterForFBDS);
  }
  // end getNP 2

  // start getParameterNamed 2
  @protected
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseParameterNamed(
        _dataSource as GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>,
        typeParameter);
  }

  @protected
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        _dataSource as GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end getParameterNamed 2

  // start insertTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIP(
      T model)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as InsertModelToNamedDatabaseTIPDataSource<Z>,
        model,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as InsertModelToNamedDatabaseTIPDataSource<Z>,
        model,
        typeParameterForFBDS);
  }
  // end insertTIP 2

  // start insertNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as InsertModelToNamedDatabaseNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as InsertModelToNamedDatabaseNPDataSource,
        typeParameterForFBDS);
  }
  // end insertNP 2

  // start insertListTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as InsertListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      List<T> listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as InsertListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        typeParameterForFBDS);
  }
  // end insertListTIP 2

  // start insertListNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as InsertListModelToNamedDatabaseNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as InsertListModelToNamedDatabaseNPDataSource,
        typeParameterForFBDS);
  }
  // end insertListNP 2

  // start updateTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIP(
      T model)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as UpdateModelToNamedDatabaseTIPDataSource<Z>,
        model,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as UpdateModelToNamedDatabaseTIPDataSource<Z>,
        model,
        typeParameterForFBDS);
  }
  // end updateTIP 2

  // start updateNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as UpdateModelToNamedDatabaseNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as UpdateModelToNamedDatabaseNPDataSource,
        typeParameterForFBDS);
  }
  // end updateNP 2

  // start updateParameterNamed 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        _dataSource as UpdateModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        _dataSource as UpdateModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateParameterNamed 2

  // start updateListTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      List<T> listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        typeParameterForFBDS);
  }
  // end updateListTIP 2

  // start updateListNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseNPDataSource,
        typeParameterForFBDS);
  }
  // end updateListNP 2

  // start updateListParameterNamed 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateListParameterNamed 2

  // start deleteTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIP(
      T model)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as DeleteModelToNamedDatabaseTIPDataSource<Z>,
        model,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as DeleteModelToNamedDatabaseTIPDataSource<Z>,
        model,
        typeParameterForFBDS);
  }
  // end deleteTIP 2

  // start deleteNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as DeleteModelToNamedDatabaseNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as DeleteModelToNamedDatabaseNPDataSource,
        typeParameterForFBDS);
  }
  // end deleteNP 2

  // start deleteParameterNamed 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        _dataSource as DeleteModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        _dataSource as DeleteModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteParameterNamed 2

  // start deleteListTIP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      List<T> listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        typeParameterForFBDS);
  }
  // end deleteListTIP 2

  // start deleteListNP 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseNPDataSource,
        typeParameterForFBDS);
  }
  // end deleteListNP 2

  // start deleteListParameterNamed 2
  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteListParameterNamed 2
  /// End DataSource **/

  /// Start Getters/Setters DataSource **/
  @protected
  @nonVirtual
  Object get getDataSource {
    return _dataSource;
  }

  @protected
  set setDataSource(
      Object dataSource)
  {
    _dataSource = dataSource;
  }
  /// End Getters/Setters DataSource **/

  /// Start Setters FBDS **/
  @protected
  @nonVirtual
  set setInsertModelToNamedDatabaseTIPFBDS(
      InsertModelToNamedDatabaseTIPFBDS<T,BaseTypeParameter> insertModelToNamedDatabaseTIPFBDS)
  {
    _insertModelToNamedDatabaseTIPFBDS = insertModelToNamedDatabaseTIPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedDatabaseTIPFBDS(
      UpdateModelToNamedDatabaseTIPFBDS<T,BaseTypeParameter> updateModelToNamedDatabaseTIPFBDS)
  {
    _updateModelToNamedDatabaseTIPFBDS = updateModelToNamedDatabaseTIPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedDatabaseTIPFBDS(
      DeleteModelToNamedDatabaseTIPFBDS<T,BaseTypeParameter> deleteModelToNamedDatabaseTIPFBDS)
  {
    _deleteModelToNamedDatabaseTIPFBDS = deleteModelToNamedDatabaseTIPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedDatabaseTIPFBDS(
      InsertListModelToNamedDatabaseTIPFBDS<T,Y,BaseTypeParameter> insertListModelToNamedDatabaseTIPFBDS)
  {
    _insertListModelToNamedDatabaseTIPFBDS = insertListModelToNamedDatabaseTIPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedDatabaseTIPFBDS(
      UpdateListModelToNamedDatabaseTIPFBDS<T,Y,BaseTypeParameter> updateListModelToNamedDatabaseTIPFBDS)
  {
    _updateListModelToNamedDatabaseTIPFBDS = updateListModelToNamedDatabaseTIPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedDatabaseTIPFBDS(
      DeleteListModelToNamedDatabaseTIPFBDS<T,Y,BaseTypeParameter> deleteListModelToNamedDatabaseTIPFBDS)
  {
    _deleteListModelToNamedDatabaseTIPFBDS = deleteListModelToNamedDatabaseTIPFBDS;
  }

  @protected
  @nonVirtual
  set setGetListModelFromNamedDatabaseNPFBDS(
      GetListModelFromNamedDatabaseNPFBDS<BaseTypeParameter> getListModelFromNamedDatabaseNPFBDS)
  {
    _getListModelFromNamedDatabaseNPFBDS = getListModelFromNamedDatabaseNPFBDS;
  }

  @protected
  @nonVirtual
  set setGetModelFromNamedDatabaseNPFBDS(
      GetModelFromNamedDatabaseNPFBDS<BaseTypeParameter> getModelFromNamedDatabaseNPFBDS)
  {
    _getModelFromNamedDatabaseNPFBDS = getModelFromNamedDatabaseNPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertModelToNamedDatabaseNPFBDS(
      InsertModelToNamedDatabaseNPFBDS insertModelToNamedDatabaseNPFBDS)
  {
    _insertModelToNamedDatabaseNPFBDS = insertModelToNamedDatabaseNPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedDatabaseNPFBDS(
      UpdateModelToNamedDatabaseNPFBDS updateModelToNamedDatabaseNPFBDS)
  {
    _updateModelToNamedDatabaseNPFBDS = updateModelToNamedDatabaseNPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedDatabaseNPFBDS(
      DeleteModelToNamedDatabaseNPFBDS deleteModelToNamedDatabaseNPFBDS)
  {
    _deleteModelToNamedDatabaseNPFBDS = deleteModelToNamedDatabaseNPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedDatabaseNPFBDS(
      InsertListModelToNamedDatabaseNPFBDS insertListModelToNamedDatabaseNPFBDS)
  {
    _insertListModelToNamedDatabaseNPFBDS = insertListModelToNamedDatabaseNPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedDatabaseNPFBDS(
      UpdateListModelToNamedDatabaseNPFBDS updateListModelToNamedDatabaseNPFBDS)
  {
    _updateListModelToNamedDatabaseNPFBDS = updateListModelToNamedDatabaseNPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedDatabaseNPFBDS(
      DeleteListModelToNamedDatabaseNPFBDS deleteListModelToNamedDatabaseNPFBDS)
  {
    _deleteListModelToNamedDatabaseNPFBDS = deleteListModelToNamedDatabaseNPFBDS;
  }

  @protected
  @nonVirtual
  set setGetListModelFromNamedDatabaseParameterNamedFBDS(
      GetListModelFromNamedDatabaseParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> getListModelFromNamedDatabaseParameterNamedFBDS)
  {
    _getListModelFromNamedDatabaseParameterNamedFBDS = getListModelFromNamedDatabaseParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setGetModelFromNamedDatabaseParameterNamedFBDS(
      GetModelFromNamedDatabaseParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> getModelFromNamedDatabaseParameterNamedFBDS)
  {
    _getModelFromNamedDatabaseParameterNamedFBDS = getModelFromNamedDatabaseParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedDatabaseParameterNamedFBDS(
      UpdateModelToNamedDatabaseParameterNamedFBDS updateModelToNamedDatabaseParameterNamedFBDS)
  {
    _updateModelToNamedDatabaseParameterNamedFBDS = updateModelToNamedDatabaseParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedDatabaseParameterNamedFBDS(
      DeleteModelToNamedDatabaseParameterNamedFBDS deleteModelToNamedDatabaseParameterNamedFBDS)
  {
    _deleteModelToNamedDatabaseParameterNamedFBDS = deleteModelToNamedDatabaseParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedDatabaseParameterNamedFBDS(
      UpdateListModelToNamedDatabaseParameterNamedFBDS updateListModelToNamedDatabaseParameterNamedFBDS)
  {
    _updateListModelToNamedDatabaseParameterNamedFBDS = updateListModelToNamedDatabaseParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedDatabaseParameterNamedFBDS(
      DeleteListModelToNamedDatabaseParameterNamedFBDS deleteListModelToNamedDatabaseParameterNamedFBDS)
  {
    _deleteListModelToNamedDatabaseParameterNamedFBDS = deleteListModelToNamedDatabaseParameterNamedFBDS;
  }
  /// End Setters FBDS **/

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseNP(
      GetListModelFromNamedDatabaseNPDataSource<X> getListModelFromNamedDatabaseNPDataSource)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseNPDataSource
        .getListModelFromNamedDatabaseNP();
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return Response.success(response.getData.toBaseListModel().listModel);
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseNPUsingTypeParameterForFBDS(
      GetListModelFromNamedDatabaseNPDataSource<X> getListModelFromNamedDatabaseNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getListModelFromNamedDatabaseNPFBDS == null) {
      return await _baseGetListModelFromNamedDatabaseNP(getListModelFromNamedDatabaseNPDataSource);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _getListModelFromNamedDatabaseNPFBDS
        .getListModelFromNamedDatabaseNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await _baseGetListModelFromNamedDatabaseNP(getListModelFromNamedDatabaseNPDataSource);
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseParameterNamed(
      GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter> getListModelFromNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter typeParameter)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseParameterNamedDataSource
        .getListModelFromNamedDatabaseParameterNamed(typeParameter);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return Response.success(response.getData.toBaseListModel().listModel);
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter> getListModelFromNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getListModelFromNamedDatabaseParameterNamedFBDS == null) {
      return await _baseGetListModelFromNamedDatabaseParameterNamed(getListModelFromNamedDatabaseParameterNamedDataSource,typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _getListModelFromNamedDatabaseParameterNamedFBDS
        .getListModelFromNamedDatabaseParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await _baseGetListModelFromNamedDatabaseParameterNamed(getListModelFromNamedDatabaseParameterNamedDataSource,typeParameter);
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseNP(
      GetModelFromNamedDatabaseNPDataSource<Z> getModelFromNamedDatabaseNPDataSource)
  async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseNPDataSource
        .getModelFromNamedDatabaseNP();
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return Response.success(response.getData.toBaseModel());
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseNPUsingTypeParameterForFBDS(
      GetModelFromNamedDatabaseNPDataSource<Z> getModelFromNamedDatabaseNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getModelFromNamedDatabaseNPFBDS == null) {
      return await _baseGetModelFromNamedDatabaseNP(getModelFromNamedDatabaseNPDataSource);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _getModelFromNamedDatabaseNPFBDS
        .getModelFromNamedDatabaseNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await _baseGetModelFromNamedDatabaseNP(getModelFromNamedDatabaseNPDataSource);
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseParameterNamed(
      GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter> getModelFromNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter typeParameter)
  async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseParameterNamedDataSource
        .getModelFromNamedDatabaseParameterNamed(typeParameter);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return Response.success(response.getData.toBaseModel());
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter> getModelFromNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getModelFromNamedDatabaseParameterNamedFBDS == null) {
      return await _baseGetModelFromNamedDatabaseParameterNamed(getModelFromNamedDatabaseParameterNamedDataSource,typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _getModelFromNamedDatabaseParameterNamedFBDS
        .getModelFromNamedDatabaseParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await _baseGetModelFromNamedDatabaseParameterNamed(getModelFromNamedDatabaseParameterNamedDataSource,typeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      InsertModelToNamedDatabaseTIPDataSource<Z> insertModelToNamedDatabaseTIPDataSource,
      T model,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ConverterToBaseModelNamedDatabase equals null");
    }
    T modelForClone = cloneModel(model);
    if(_insertModelToNamedDatabaseTIPFBDS == null) {
      return await insertModelToNamedDatabaseTIPDataSource
          .insertModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _insertModelToNamedDatabaseTIPFBDS
        .insertModelToNamedDatabaseTIP(modelForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await insertModelToNamedDatabaseTIPDataSource
        .insertModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      InsertModelToNamedDatabaseNPDataSource insertModelToNamedDatabaseNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertModelToNamedDatabaseNPFBDS == null) {
      return await insertModelToNamedDatabaseNPDataSource
          .insertModelToNamedDatabaseNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _insertModelToNamedDatabaseNPFBDS
        .insertModelToNamedDatabaseNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await insertModelToNamedDatabaseNPDataSource
        .insertModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      InsertListModelToNamedDatabaseTIPDataSource<X> insertListModelToNamedDatabaseTIPDataSource,
      List<T> listModel,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ConverterToBaseListModelNamedDatabase equals null");
    }
    BaseListModel<T> listModelForClone = BaseListModel<T>(cloneListModel(listModel));
    if(_insertListModelToNamedDatabaseTIPFBDS == null) {
      return await insertListModelToNamedDatabaseTIPDataSource
          .insertListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _insertListModelToNamedDatabaseTIPFBDS
        .insertListModelToNamedDatabaseTIP(listModelForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await insertListModelToNamedDatabaseTIPDataSource
        .insertListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      InsertListModelToNamedDatabaseNPDataSource insertListModelToNamedDatabaseNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertListModelToNamedDatabaseNPFBDS == null) {
      return await insertListModelToNamedDatabaseNPDataSource
          .insertListModelToNamedDatabaseNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _insertListModelToNamedDatabaseNPFBDS
        .insertListModelToNamedDatabaseNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await insertListModelToNamedDatabaseNPDataSource
        .insertListModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      UpdateModelToNamedDatabaseTIPDataSource<Z> updateModelToNamedDatabaseTIPDataSource,
      T model,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ConverterToBaseModelNamedDatabase equals null");
    }
    T modelForClone = cloneModel(model);
    if(_updateModelToNamedDatabaseTIPFBDS == null) {
      return await updateModelToNamedDatabaseTIPDataSource
          .updateModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateModelToNamedDatabaseTIPFBDS
        .updateModelToNamedDatabaseTIP(modelForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateModelToNamedDatabaseTIPDataSource
        .updateModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      UpdateModelToNamedDatabaseNPDataSource updateModelToNamedDatabaseNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateModelToNamedDatabaseNPFBDS == null) {
      return await updateModelToNamedDatabaseNPDataSource
          .updateModelToNamedDatabaseNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateModelToNamedDatabaseNPFBDS
        .updateModelToNamedDatabaseNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateModelToNamedDatabaseNPDataSource
        .updateModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      UpdateModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> updateModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateModelToNamedDatabaseParameterNamedFBDS == null) {
      return await updateModelToNamedDatabaseParameterNamedDataSource
          .updateModelToNamedDatabaseParameterNamed(typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateModelToNamedDatabaseParameterNamedFBDS
        .updateModelToNamedDatabaseParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateModelToNamedDatabaseParameterNamedDataSource
        .updateModelToNamedDatabaseParameterNamed(typeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      UpdateListModelToNamedDatabaseTIPDataSource<X> updateListModelToNamedDatabaseTIPDataSource,
      List<T> listModel,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ConverterToBaseListModelNamedDatabase equals null");
    }
    BaseListModel<T> listModelForClone = BaseListModel<T>(cloneListModel(listModel));
    if(_updateListModelToNamedDatabaseTIPFBDS == null) {
      return await updateListModelToNamedDatabaseTIPDataSource
          .updateListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateListModelToNamedDatabaseTIPFBDS
        .updateListModelToNamedDatabaseTIP(listModelForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateListModelToNamedDatabaseTIPDataSource
        .updateListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      UpdateListModelToNamedDatabaseNPDataSource updateListModelToNamedDatabaseNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateListModelToNamedDatabaseNPFBDS == null) {
      return await updateListModelToNamedDatabaseNPDataSource
          .updateListModelToNamedDatabaseNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateListModelToNamedDatabaseNPFBDS
        .updateListModelToNamedDatabaseNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateListModelToNamedDatabaseNPDataSource
        .updateListModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      UpdateListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> updateListModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateListModelToNamedDatabaseParameterNamedFBDS == null) {
      return await updateListModelToNamedDatabaseParameterNamedDataSource
          .updateListModelToNamedDatabaseParameterNamed(typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _updateListModelToNamedDatabaseParameterNamedFBDS
        .updateListModelToNamedDatabaseParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await updateListModelToNamedDatabaseParameterNamedDataSource
        .updateListModelToNamedDatabaseParameterNamed(typeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      DeleteModelToNamedDatabaseTIPDataSource<Z> deleteModelToNamedDatabaseTIPDataSource,
      T model,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ConverterToBaseModelNamedDatabase equals null");
    }
    T modelForClone = cloneModel(model);
    if(_deleteModelToNamedDatabaseTIPFBDS == null) {
      return await deleteModelToNamedDatabaseTIPDataSource
          .deleteModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteModelToNamedDatabaseTIPFBDS
        .deleteModelToNamedDatabaseTIP(modelForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await deleteModelToNamedDatabaseTIPDataSource
        .deleteModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      DeleteModelToNamedDatabaseNPDataSource deleteModelToNamedDatabaseNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteModelToNamedDatabaseNPFBDS == null) {
      return await deleteModelToNamedDatabaseNPDataSource
          .deleteModelToNamedDatabaseNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteModelToNamedDatabaseNPFBDS
        .deleteModelToNamedDatabaseNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await deleteModelToNamedDatabaseNPDataSource
        .deleteModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      DeleteModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> deleteModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteModelToNamedDatabaseParameterNamedFBDS == null) {
      return await deleteModelToNamedDatabaseParameterNamedDataSource
          .deleteModelToNamedDatabaseParameterNamed(typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteModelToNamedDatabaseParameterNamedFBDS
        .deleteModelToNamedDatabaseParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await deleteModelToNamedDatabaseParameterNamedDataSource
        .deleteModelToNamedDatabaseParameterNamed(typeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      DeleteListModelToNamedDatabaseTIPDataSource<X> deleteListModelToNamedDatabaseTIPDataSource,
      List<T> listModel,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ConverterToBaseListModelNamedDatabase equals null");
    }
    BaseListModel<T> listModelForClone = BaseListModel<T>(cloneListModel(listModel));
    if(_deleteListModelToNamedDatabaseTIPFBDS == null) {
      return await deleteListModelToNamedDatabaseTIPDataSource
          .deleteListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteListModelToNamedDatabaseTIPFBDS
        .deleteListModelToNamedDatabaseTIP(listModelForClone,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await deleteListModelToNamedDatabaseTIPDataSource
        .deleteListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      DeleteListModelToNamedDatabaseNPDataSource deleteListModelToNamedDatabaseNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteListModelToNamedDatabaseNPFBDS == null) {
      return await deleteListModelToNamedDatabaseNPDataSource
          .deleteListModelToNamedDatabaseNP();
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteListModelToNamedDatabaseNPFBDS
        .deleteListModelToNamedDatabaseNP(typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return deleteListModelToNamedDatabaseNPDataSource
        .deleteListModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      DeleteListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> deleteListModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteListModelToNamedDatabaseParameterNamedFBDS == null) {
      return await deleteListModelToNamedDatabaseParameterNamedDataSource
          .deleteListModelToNamedDatabaseParameterNamed(typeParameter);
    }
    ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS response = _deleteListModelToNamedDatabaseParameterNamedFBDS
        .deleteListModelToNamedDatabaseParameterNamed(typeParameter,typeParameterForFBDS);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(response.getCancelOperationWithoutExceptionAndSuccess);
    }
    return await deleteListModelToNamedDatabaseParameterNamedDataSource
        .deleteListModelToNamedDatabaseParameterNamed(typeParameter);
  }
}