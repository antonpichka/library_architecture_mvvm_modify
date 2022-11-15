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
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_list_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_list_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_list_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_list_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/delete_list_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/delete_list_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/delete_list_model_to_named_service_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/delete_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/delete_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/delete_model_to_named_service_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/get_list_model_from_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/get_list_model_from_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/get_model_from_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/get_model_from_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/insert_list_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/insert_list_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/insert_list_model_to_named_service_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/insert_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/insert_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/insert_model_to_named_service_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/update_list_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/update_list_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/update_list_model_to_named_service_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/update_model_to_named_service_np_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/update_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_function_before_data_source/update_model_to_named_service_tip_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

abstract class BaseModelQNamedServiceBackgroundModel<T extends BaseModel,Y extends BaseListModel<T>>
{
  /* Init DataSource */
  @protected
  final Object modelQNamedServiceDataSource;

  /* FBDS (Function Before Data Source) */
  InsertModelToNamedServiceTIPFBDS<T,BaseTypeParameter> _insertModelToNamedServiceTIPFBDS;
  InsertListModelToNamedServiceTIPFBDS<Y,BaseTypeParameter> _insertListModelToNamedServiceTIPFBDS;
  UpdateModelToNamedServiceTIPFBDS<T,BaseTypeParameter> _updateModelToNamedServiceTIPFBDS;
  UpdateListModelToNamedServiceTIPFBDS<Y,BaseTypeParameter> _updateListModelToNamedServiceTIPFBDS;
  DeleteModelToNamedServiceTIPFBDS<T,BaseTypeParameter> _deleteModelToNamedServiceTIPFBDS;
  DeleteListModelToNamedServiceTIPFBDS<Y,BaseTypeParameter> _deleteListModelToNamedServiceTIPFBDS;

  GetListModelFromNamedServiceNPFBDS<BaseTypeParameter> _getListModelFromNamedServiceNPFBDS;
  GetModelFromNamedServiceNPFBDS<BaseTypeParameter> _getModelFromNamedServiceNPFBDS;
  InsertModelToNamedServiceNPFBDS<BaseTypeParameter> _insertModelToNamedServiceNPFBDS;
  InsertListModelToNamedServiceNPFBDS<BaseTypeParameter> _insertListModelToNamedServiceNPFBDS;
  UpdateModelToNamedServiceNPFBDS<BaseTypeParameter> _updateModelToNamedServiceNPFBDS;
  UpdateListModelToNamedServiceNPFBDS<BaseTypeParameter> _updateListModelToNamedServiceNPFBDS;
  DeleteModelToNamedServiceNPFBDS<BaseTypeParameter> _deleteModelToNamedServiceNPFBDS;
  DeleteListModelToNamedServiceNPFBDS<BaseTypeParameter> _deleteListModelToNamedServiceNPFBDS;

  GetListModelFromNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _getListModelFromNamedServiceParameterNamedFBDS;
  GetModelFromNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _getModelFromNamedServiceParameterNamedFBDS;
  InsertModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _insertModelToNamedServiceParameterNamedFBDS;
  InsertListModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _insertListModelToNamedServiceParameterNamedFBDS;
  UpdateModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _updateModelToNamedServiceParameterNamedFBDS;
  UpdateListModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _updateListModelToNamedServiceParameterNamedFBDS;
  DeleteModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _deleteModelToNamedServiceParameterNamedFBDS;
  DeleteListModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> _deleteListModelToNamedServiceParameterNamedFBDS;

  BaseModelQNamedServiceBackgroundModel.thereIsDataSource(this.modelQNamedServiceDataSource);

  @protected
  @nonVirtual
  DataSource getDataSource<DataSource extends Object>() {
    return modelQNamedServiceDataSource;
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
  T cloneModelForSuccess(
      T model);

  @protected
  Y cloneListModelForSuccess(
      Y listModel);

  @protected
  @nonVirtual
  BaseTypeParameter cloneBaseTypeParameter(
      BaseTypeParameter baseTypeParameter)
  {
    return BaseTypeParameter(baseTypeParameter.getParameter);
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
  Future<Y> getListModelFromNamedServiceNP()
  {
    return _baseGetListModelFromNamedServiceNP(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>);
  }

  @protected
  Future<Y> getListModelFromNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseGetListModelFromNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceNPDataSource<Y>,
        typeParameterForFBDS);
  }
  // end getListNP 2

  // start getListParameterNamed 2
  @protected
  Future<Y> getListModelFromNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseGetListModelFromNamedServiceParameterNamed(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,BaseTypeParameter>,
        typeParameter);
  }

  @protected
  Future<Y> getListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseGetListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as GetListModelFromNamedServiceParameterNamedDataSource<Y,BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end getListParameterNamed 2

  // start getNP 2
  @protected
  Future<T> getModelFromNamedServiceNP()
  {
    return _baseGetModelFromNamedServiceNP(modelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>);
  }

  @protected
  Future<T> getModelFromNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseGetModelFromNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as GetModelFromNamedServiceNPDataSource<T>,
        typeParameterForFBDS);
  }
  // end getNP 2

  // start getParameterNamed 2
  @protected
  Future<T> getModelFromNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseGetModelFromNamedServiceParameterNamed(
        modelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,BaseTypeParameter>,
        typeParameter);
  }

  @protected
  Future<T> getModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseGetModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as GetModelFromNamedServiceParameterNamedDataSource<T,BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end getParameterNamed 2

  // start insertTIP 2
  @protected
  Future<Response> insertModelToNamedServiceTIP(
      T model)
  {
    return _baseInsertModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertModelToNamedServiceTIPDataSource<T>,
        model,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertModelToNamedServiceTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertModelToNamedServiceTIPDataSource<T>,
        model,
        typeParameterForFBDS);
  }
  // end insertTIP 2

  // start insertNP 2
  @protected
  Future<Response> insertModelToNamedServiceNP()
  {
    return _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertModelToNamedServiceNPDataSource,
        typeParameterForFBDS);
  }
  // end insertNP 2

  // start insertParameterNamed 2
  @protected
  Future<Response> insertModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertParameterNamed 2

  // start insertListTIP 2
  @protected
  Future<Response> insertListModelToNamedServiceTIP(
      Y listModel)
  {
    return _baseInsertListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceTIPDataSource<Y>,
        listModel,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertListModelToNamedServiceTIPUsingTypeParameterForFBDS(
      Y listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceTIPDataSource<Y>,
        listModel,
        typeParameterForFBDS);
  }
  // end insertListTIP 2

  // start insertListNP 2
  @protected
  Future<Response> insertListModelToNamedServiceNP()
  {
    return _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertListModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceNPDataSource,
        typeParameterForFBDS);
  }
  // end insertListNP 2

  // start insertListParameterNamed 2
  @protected
  Future<Response> insertListModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> insertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as InsertListModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertListParameterNamed 2

  // start updateTIP 2
  @protected
  Future<Response> updateModelToNamedServiceTIP(
      T model)
  {
    return _baseUpdateModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceTIPDataSource<T>,
        model,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateModelToNamedServiceTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceTIPDataSource<T>,
        model,
        typeParameterForFBDS);
  }
  // end updateTIP 2

  // start updateNP 2
  @protected
  Future<Response> updateModelToNamedServiceNP()
  {
    return _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceNPDataSource,
        typeParameterForFBDS);
  }
  // end updateNP 2

  // start updateParameterNamed 2
  @protected
  Future<Response> updateModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateParameterNamed 2

  // start updateListTIP 2
  @protected
  Future<Response> updateListModelToNamedServiceTIP(
      Y listModel)
  {
    return _baseUpdateListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceTIPDataSource<Y>,
        listModel,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateListModelToNamedServiceTIPUsingTypeParameterForFBDS(
      Y listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceTIPDataSource<Y>,
        listModel,
        typeParameterForFBDS);
  }
  // end updateListTIP 2

  // start updateListNP 2
  @protected
  Future<Response> updateListModelToNamedServiceNP()
  {
    return _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateListModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceNPDataSource,
        typeParameterForFBDS);
  }
  // end updateListNP 2

  // start updateListParameterNamed 2
  @protected
  Future<Response> updateListModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> updateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as UpdateListModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateListParameterNamed 2

  // start deleteTIP 2
  @protected
  Future<Response> deleteModelToNamedServiceTIP(
      T model)
  {
    return _baseDeleteModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceTIPDataSource<T>,
        model,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteModelToNamedServiceTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceTIPDataSource<T>,
        model,
        typeParameterForFBDS);
  }
  // end deleteTIP 2

  // start deleteNP 2
  @protected
  Future<Response> deleteModelToNamedServiceNP()
  {
    return _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceNPDataSource,
        typeParameterForFBDS);
  }
  // end deleteNP 2

  // start deleteParameterNamed 2
  @protected
  Future<Response> deleteModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteParameterNamed 2

  // start deleteListTIP 2
  @protected
  Future<Response> deleteListModelToNamedServiceTIP(
      Y listModel)
  {
    return _baseDeleteListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceTIPDataSource<Y>,
        listModel,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteListModelToNamedServiceTIPUsingTypeParameterForFBDS(
      Y listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceTIPDataSource<Y>,
        listModel,
        typeParameterForFBDS);
  }
  // end deleteListTIP 2

  // start deleteListNP 2
  @protected
  Future<Response> deleteListModelToNamedServiceNP()
  {
    return _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteListModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceNPDataSource,
        typeParameterForFBDS);
  }
  // end deleteListNP 2

  // start deleteListParameterNamed 2
  @protected
  Future<Response> deleteListModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    return _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        BaseTypeParameter(null));
  }

  @protected
  Future<Response> deleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    return _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        modelQNamedServiceDataSource as DeleteListModelToNamedServiceParameterNamedDataSource<BaseTypeParameter>,
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteListParameterNamed 2
  /// End DataSource **/

  /// Start Setters FBDS **/
  @protected
  @nonVirtual
  set setInsertModelToNamedServiceTIPFBDS(
      InsertModelToNamedServiceTIPFBDS<T,BaseTypeParameter> insertModelToNamedServiceTIPFBDS)
  {
    _insertModelToNamedServiceTIPFBDS = insertModelToNamedServiceTIPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedServiceTIPFBDS(
      UpdateModelToNamedServiceTIPFBDS<T,BaseTypeParameter> updateModelToNamedServiceTIPFBDS)
  {
    _updateModelToNamedServiceTIPFBDS = updateModelToNamedServiceTIPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedServiceTIPFBDS(
      DeleteModelToNamedServiceTIPFBDS<T,BaseTypeParameter> deleteModelToNamedServiceTIPFBDS)
  {
    _deleteModelToNamedServiceTIPFBDS = deleteModelToNamedServiceTIPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedServiceTIPFBDS(
      InsertListModelToNamedServiceTIPFBDS<Y,BaseTypeParameter> insertListModelToNamedServiceTIPFBDS)
  {
    _insertListModelToNamedServiceTIPFBDS = insertListModelToNamedServiceTIPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedServiceTIPFBDS(
      UpdateListModelToNamedServiceTIPFBDS<Y,BaseTypeParameter> updateListModelToNamedServiceTIPFBDS)
  {
    _updateListModelToNamedServiceTIPFBDS = updateListModelToNamedServiceTIPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedServiceTIPFBDS(
      DeleteListModelToNamedServiceTIPFBDS<Y,BaseTypeParameter> deleteListModelToNamedServiceTIPFBDS)
  {
    _deleteListModelToNamedServiceTIPFBDS = deleteListModelToNamedServiceTIPFBDS;
  }

  @protected
  @nonVirtual
  set setGetListModelFromNamedServiceNPFBDS(
      GetListModelFromNamedServiceNPFBDS<BaseTypeParameter> getListModelFromNamedServiceNPFBDS)
  {
    _getListModelFromNamedServiceNPFBDS = getListModelFromNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setGetModelFromNamedServiceNPFBDS(
      GetModelFromNamedServiceNPFBDS<BaseTypeParameter> getModelFromNamedServiceNPFBDS)
  {
    _getModelFromNamedServiceNPFBDS = getModelFromNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertModelToNamedServiceNPFBDS(
      InsertModelToNamedServiceNPFBDS<BaseTypeParameter> insertModelToNamedServiceNPFBDS)
  {
    _insertModelToNamedServiceNPFBDS = insertModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedServiceNPFBDS(
      UpdateModelToNamedServiceNPFBDS<BaseTypeParameter> updateModelToNamedServiceNPFBDS)
  {
    _updateModelToNamedServiceNPFBDS = updateModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedServiceNPFBDS(
      DeleteModelToNamedServiceNPFBDS<BaseTypeParameter> deleteModelToNamedServiceNPFBDS)
  {
    _deleteModelToNamedServiceNPFBDS = deleteModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedServiceNPFBDS(
      InsertListModelToNamedServiceNPFBDS<BaseTypeParameter> insertListModelToNamedServiceNPFBDS)
  {
    _insertListModelToNamedServiceNPFBDS = insertListModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedServiceNPFBDS(
      UpdateListModelToNamedServiceNPFBDS<BaseTypeParameter> updateListModelToNamedServiceNPFBDS)
  {
    _updateListModelToNamedServiceNPFBDS = updateListModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedServiceNPFBDS(
      DeleteListModelToNamedServiceNPFBDS<BaseTypeParameter> deleteListModelToNamedServiceNPFBDS)
  {
    _deleteListModelToNamedServiceNPFBDS = deleteListModelToNamedServiceNPFBDS;
  }

  @protected
  @nonVirtual
  set setGetListModelFromNamedServiceParameterNamedFBDS(
      GetListModelFromNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> getListModelFromNamedServiceParameterNamedFBDS)
  {
    _getListModelFromNamedServiceParameterNamedFBDS = getListModelFromNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setGetModelFromNamedServiceParameterNamedFBDS(
      GetModelFromNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> getModelFromNamedServiceParameterNamedFBDS)
  {
    _getModelFromNamedServiceParameterNamedFBDS = getModelFromNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setInsertModelToNamedServiceParameterNamedFBDS(
      InsertModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> insertModelToNamedServiceParameterNamedFBDS)
  {
    _insertModelToNamedServiceParameterNamedFBDS = insertModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedServiceParameterNamedFBDS(
      UpdateModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> updateModelToNamedServiceParameterNamedFBDS)
  {
    _updateModelToNamedServiceParameterNamedFBDS = updateModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedServiceParameterNamedFBDS(
      DeleteModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> deleteModelToNamedServiceParameterNamedFBDS)
  {
    _deleteModelToNamedServiceParameterNamedFBDS = deleteModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedServiceParameterNamedFBDS(
      InsertListModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> insertListModelToNamedServiceParameterNamedFBDS)
  {
    _insertListModelToNamedServiceParameterNamedFBDS = insertListModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedServiceParameterNamedFBDS(
      UpdateListModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> updateListModelToNamedServiceParameterNamedFBDS)
  {
    _updateListModelToNamedServiceParameterNamedFBDS = updateListModelToNamedServiceParameterNamedFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedServiceParameterNamedFBDS(
      DeleteListModelToNamedServiceParameterNamedFBDS<BaseTypeParameter,BaseTypeParameter> deleteListModelToNamedServiceParameterNamedFBDS)
  {
    _deleteListModelToNamedServiceParameterNamedFBDS = deleteListModelToNamedServiceParameterNamedFBDS;
  }
  /// End Setters FBDS **/

  Future<Y> _baseGetListModelFromNamedServiceNP(
      GetListModelFromNamedServiceNPDataSource<Y> getListModelFromNamedServiceNPDataSource)
  {
    return getListModelFromNamedServiceNPDataSource.getListModelFromNamedServiceNP();
  }

  Future<Y> _baseGetListModelFromNamedServiceNPUsingTypeParameterForFBDS(
      GetListModelFromNamedServiceNPDataSource<Y> getListModelFromNamedServiceNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getListModelFromNamedServiceNPFBDS == null) {
      return await _baseGetListModelFromNamedServiceNP(getListModelFromNamedServiceNPDataSource);
    }
    Response response = _getListModelFromNamedServiceNPFBDS
        .getListModelFromNamedServiceNP(typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      BaseListModel<T> listModel = BaseListModel<T>.exception(response.getException());
      return listModel;
    }
    return await _baseGetListModelFromNamedServiceNP(getListModelFromNamedServiceNPDataSource);
  }

  Future<Y> _baseGetListModelFromNamedServiceParameterNamed(
      GetListModelFromNamedServiceParameterNamedDataSource<Y,BaseTypeParameter> getListModelFromNamedServiceParameterNamedDataSource,
      BaseTypeParameter typeParameter)
  {
    return getListModelFromNamedServiceParameterNamedDataSource.getListModelFromNamedServiceParameterNamed(typeParameter);
  }

  Future<Y> _baseGetListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
      GetListModelFromNamedServiceParameterNamedDataSource<Y,BaseTypeParameter> getListModelFromNamedServiceParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    BaseTypeParameter typeParameterForClone = cloneBaseTypeParameter(typeParameter);
    if(_getListModelFromNamedServiceParameterNamedFBDS == null) {
      return await _baseGetListModelFromNamedServiceParameterNamed(getListModelFromNamedServiceParameterNamedDataSource,typeParameterForClone);
    }
    Response response = _getListModelFromNamedServiceParameterNamedFBDS
        .getListModelFromNamedServiceParameterNamed(typeParameterForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      BaseListModel<T> listModel = BaseListModel<T>.exception(response.getException());
      return listModel;
    }
    return await _baseGetListModelFromNamedServiceParameterNamed(getListModelFromNamedServiceParameterNamedDataSource,typeParameterForClone);
  }

  Future<T> _baseGetModelFromNamedServiceNP(
      GetModelFromNamedServiceNPDataSource<T> getModelFromNamedServiceNPDataSource)
  {
    return getModelFromNamedServiceNPDataSource.getModelFromNamedServiceNP();
  }

  Future<T> _baseGetModelFromNamedServiceNPUsingTypeParameterForFBDS(
      GetModelFromNamedServiceNPDataSource<T> getModelFromNamedServiceNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_getModelFromNamedServiceNPFBDS == null) {
      return await _baseGetModelFromNamedServiceNP(getModelFromNamedServiceNPDataSource);
    }
    Response response = _getModelFromNamedServiceNPFBDS
        .getModelFromNamedServiceNP(typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      BaseModel model = BaseModel.exception(response.getException());
      return model;
    }
    return await _baseGetModelFromNamedServiceNP(getModelFromNamedServiceNPDataSource);
  }

  Future<T> _baseGetModelFromNamedServiceParameterNamed(
      GetModelFromNamedServiceParameterNamedDataSource<T,BaseTypeParameter> getModelFromNamedServiceParameterNamedDataSource,
      BaseTypeParameter typeParameter)
  {
    return getModelFromNamedServiceParameterNamedDataSource
        .getModelFromNamedServiceParameterNamed(typeParameter);
  }

  Future<T> _baseGetModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
      GetModelFromNamedServiceParameterNamedDataSource<T,BaseTypeParameter> getModelFromNamedServiceParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    BaseTypeParameter typeParameterForClone = cloneBaseTypeParameter(typeParameter);
    if(_getModelFromNamedServiceParameterNamedFBDS == null) {
      return await _baseGetModelFromNamedServiceParameterNamed(getModelFromNamedServiceParameterNamedDataSource,typeParameterForClone);
    }
    Response response = _getModelFromNamedServiceParameterNamedFBDS
        .getModelFromNamedServiceParameterNamed(typeParameterForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      BaseModel model = BaseModel.exception(response.getException());
      return model;
    }
    return await _baseGetModelFromNamedServiceParameterNamed(getModelFromNamedServiceParameterNamedDataSource,typeParameterForClone);
  }

  Future<Response> _baseInsertModelToNamedServiceTIPUsingTypeParameterForFBDS(
      InsertModelToNamedServiceTIPDataSource<T> insertModelToNamedServiceTIPDataSource,
      T model,
      BaseTypeParameter typeParameterForFBDS)
  async {
    T modelForClone = cloneModelForSuccess(model);
    if(_insertModelToNamedServiceTIPFBDS == null) {
      return await insertModelToNamedServiceTIPDataSource
          .insertModelToNamedServiceTIP(modelForClone);
    }
    Response response = _insertModelToNamedServiceTIPFBDS
        .insertModelToNamedServiceTIP(modelForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await insertModelToNamedServiceTIPDataSource
        .insertModelToNamedServiceTIP(modelForClone);
  }

  Future<Response> _baseInsertModelToNamedServiceNPUsingTypeParameterForFBDS(
      InsertModelToNamedServiceNPDataSource insertModelToNamedServiceNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertModelToNamedServiceNPFBDS == null) {
      return await insertModelToNamedServiceNPDataSource
          .insertModelToNamedServiceNP();
    }
    Response response = _insertModelToNamedServiceNPFBDS
        .insertModelToNamedServiceNP(typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await insertModelToNamedServiceNPDataSource
        .insertModelToNamedServiceNP();
  }

  Future<Response> _baseInsertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      InsertModelToNamedServiceParameterNamedDataSource<BaseTypeParameter> insertModelToNamedServiceParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    BaseTypeParameter typeParameterForClone = cloneBaseTypeParameter(typeParameter);
    if(_insertModelToNamedServiceParameterNamedFBDS == null) {
      return await insertModelToNamedServiceParameterNamedDataSource
          .insertModelToNamedServiceParameterNamed(typeParameterForClone);
    }
    Response response = _insertModelToNamedServiceParameterNamedFBDS
        .insertModelToNamedServiceParameterNamed(typeParameterForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await insertModelToNamedServiceParameterNamedDataSource
        .insertModelToNamedServiceParameterNamed(typeParameterForClone);
  }

  Future<Response> _baseInsertListModelToNamedServiceTIPUsingTypeParameterForFBDS(
      InsertListModelToNamedServiceTIPDataSource<Y> insertListModelToNamedServiceTIPDataSource,
      Y listModel,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Y listModelForClone = cloneListModelForSuccess(listModel);
    if(_insertListModelToNamedServiceTIPFBDS == null) {
      return await insertListModelToNamedServiceTIPDataSource
          .insertListModelToNamedServiceTIP(listModelForClone);
    }
    Response response = _insertListModelToNamedServiceTIPFBDS
        .insertListModelToNamedServiceTIP(listModelForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await insertListModelToNamedServiceTIPDataSource
        .insertListModelToNamedServiceTIP(listModelForClone);
  }

  Future<Response> _baseInsertListModelToNamedServiceNPUsingTypeParameterForFBDS(
      InsertListModelToNamedServiceNPDataSource insertListModelToNamedServiceNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_insertListModelToNamedServiceNPFBDS == null) {
      return await insertListModelToNamedServiceNPDataSource
          .insertListModelToNamedServiceNP();
    }
    Response response = _insertListModelToNamedServiceNPFBDS
        .insertListModelToNamedServiceNP(typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await insertListModelToNamedServiceNPDataSource
        .insertListModelToNamedServiceNP();
  }

  Future<Response> _baseInsertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      InsertListModelToNamedServiceParameterNamedDataSource<BaseTypeParameter> insertListModelToNamedServiceParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    BaseTypeParameter typeParameterForClone = cloneBaseTypeParameter(typeParameter);
    if(_insertListModelToNamedServiceParameterNamedFBDS == null) {
      return await insertListModelToNamedServiceParameterNamedDataSource
          .insertListModelToNamedServiceParameterNamed(typeParameterForClone);
    }
    Response response = _insertListModelToNamedServiceParameterNamedFBDS
        .insertListModelToNamedServiceParameterNamed(typeParameterForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await insertListModelToNamedServiceParameterNamedDataSource
        .insertListModelToNamedServiceParameterNamed(typeParameterForClone);
  }

  Future<Response> _baseUpdateModelToNamedServiceTIPUsingTypeParameterForFBDS(
      UpdateModelToNamedServiceTIPDataSource<T> updateModelToNamedServiceTIPDataSource,
      T model,
      BaseTypeParameter typeParameterForFBDS)
  async {
    T modelForClone = cloneModelForSuccess(model);
    if(_updateModelToNamedServiceTIPFBDS == null) {
      return await updateModelToNamedServiceTIPDataSource
          .updateModelToNamedServiceTIP(modelForClone);
    }
    Response response = _updateModelToNamedServiceTIPFBDS
        .updateModelToNamedServiceTIP(modelForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await updateModelToNamedServiceTIPDataSource
        .updateModelToNamedServiceTIP(modelForClone);
  }

  Future<Response> _baseUpdateModelToNamedServiceNPUsingTypeParameterForFBDS(
      UpdateModelToNamedServiceNPDataSource updateModelToNamedServiceNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateModelToNamedServiceNPFBDS == null) {
      return await updateModelToNamedServiceNPDataSource
          .updateModelToNamedServiceNP();
    }
    Response response = _updateModelToNamedServiceNPFBDS
        .updateModelToNamedServiceNP(typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await updateModelToNamedServiceNPDataSource
        .updateModelToNamedServiceNP();
  }

  Future<Response> _baseUpdateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      UpdateModelToNamedServiceParameterNamedDataSource<BaseTypeParameter> updateModelToNamedServiceParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    BaseTypeParameter typeParameterForClone = cloneBaseTypeParameter(typeParameter);
    if(_updateModelToNamedServiceParameterNamedFBDS == null) {
      return await updateModelToNamedServiceParameterNamedDataSource
          .updateModelToNamedServiceParameterNamed(typeParameterForClone);
    }
    Response response = _updateModelToNamedServiceParameterNamedFBDS
        .updateModelToNamedServiceParameterNamed(typeParameterForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await updateModelToNamedServiceParameterNamedDataSource
        .updateModelToNamedServiceParameterNamed(typeParameterForClone);
  }

  Future<Response> _baseUpdateListModelToNamedServiceTIPUsingTypeParameterForFBDS(
      UpdateListModelToNamedServiceTIPDataSource<Y> updateListModelToNamedServiceTIPDataSource,
      Y listModel,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Y listModelForClone = cloneListModelForSuccess(listModel);
    if(_updateListModelToNamedServiceTIPFBDS == null) {
      return await updateListModelToNamedServiceTIPDataSource
          .updateListModelToNamedServiceTIP(listModelForClone);
    }
    Response response = _updateListModelToNamedServiceTIPFBDS
        .updateListModelToNamedServiceTIP(listModelForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await updateListModelToNamedServiceTIPDataSource
        .updateListModelToNamedServiceTIP(listModelForClone);
  }

  Future<Response> _baseUpdateListModelToNamedServiceNPUsingTypeParameterForFBDS(
      UpdateListModelToNamedServiceNPDataSource updateListModelToNamedServiceNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_updateListModelToNamedServiceNPFBDS == null) {
      return await updateListModelToNamedServiceNPDataSource
          .updateListModelToNamedServiceNP();
    }
    Response response = _updateListModelToNamedServiceNPFBDS
        .updateListModelToNamedServiceNP(typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await updateListModelToNamedServiceNPDataSource
        .updateListModelToNamedServiceNP();
  }

  Future<Response> _baseUpdateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      UpdateListModelToNamedServiceParameterNamedDataSource<BaseTypeParameter> updateListModelToNamedServiceParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    BaseTypeParameter typeParameterForClone = cloneBaseTypeParameter(typeParameter);
    if(_updateListModelToNamedServiceParameterNamedFBDS == null) {
      return await updateListModelToNamedServiceParameterNamedDataSource
          .updateListModelToNamedServiceParameterNamed(typeParameterForClone);
    }
    Response response = _updateListModelToNamedServiceParameterNamedFBDS
        .updateListModelToNamedServiceParameterNamed(typeParameterForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await updateListModelToNamedServiceParameterNamedDataSource
        .updateListModelToNamedServiceParameterNamed(typeParameterForClone);
  }

  Future<Response> _baseDeleteModelToNamedServiceTIPUsingTypeParameterForFBDS(
      DeleteModelToNamedServiceTIPDataSource<T> deleteModelToNamedServiceTIPDataSource,
      T model,
      BaseTypeParameter typeParameterForFBDS)
  async {
    T modelForClone = cloneModelForSuccess(model);
    if(_deleteModelToNamedServiceTIPFBDS == null) {
      return await deleteModelToNamedServiceTIPDataSource
          .deleteModelToNamedServiceTIP(modelForClone);
    }
    Response response = _deleteModelToNamedServiceTIPFBDS
        .deleteModelToNamedServiceTIP(modelForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await deleteModelToNamedServiceTIPDataSource
        .deleteModelToNamedServiceTIP(modelForClone);
  }

  Future<Response> _baseDeleteModelToNamedServiceNPUsingTypeParameterForFBDS(
      DeleteModelToNamedServiceNPDataSource deleteModelToNamedServiceNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteModelToNamedServiceNPFBDS == null) {
      return await deleteModelToNamedServiceNPDataSource
          .deleteModelToNamedServiceNP();
    }
    Response response = _deleteModelToNamedServiceNPFBDS
        .deleteModelToNamedServiceNP(typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await deleteModelToNamedServiceNPDataSource
        .deleteModelToNamedServiceNP();
  }

  Future<Response> _baseDeleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      DeleteModelToNamedServiceParameterNamedDataSource<BaseTypeParameter> deleteModelToNamedServiceParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    BaseTypeParameter typeParameterForClone = cloneBaseTypeParameter(typeParameter);
    if(_deleteModelToNamedServiceParameterNamedFBDS == null) {
      return await deleteModelToNamedServiceParameterNamedDataSource
          .deleteModelToNamedServiceParameterNamed(typeParameterForClone);
    }
    Response response = _deleteModelToNamedServiceParameterNamedFBDS
        .deleteModelToNamedServiceParameterNamed(typeParameterForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await deleteModelToNamedServiceParameterNamedDataSource
        .deleteModelToNamedServiceParameterNamed(typeParameterForClone);
  }

  Future<Response> _baseDeleteListModelToNamedServiceTIPUsingTypeParameterForFBDS(
      DeleteListModelToNamedServiceTIPDataSource<Y> deleteListModelToNamedServiceTIPDataSource,
      Y listModel,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Y listModelForClone = cloneListModelForSuccess(listModel);
    if(_deleteListModelToNamedServiceTIPFBDS == null) {
      return await deleteListModelToNamedServiceTIPDataSource
          .deleteListModelToNamedServiceTIP(listModelForClone);
    }
    Response response = _deleteListModelToNamedServiceTIPFBDS
        .deleteListModelToNamedServiceTIP(listModelForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await deleteListModelToNamedServiceTIPDataSource
        .deleteListModelToNamedServiceTIP(listModelForClone);
  }

  Future<Response> _baseDeleteListModelToNamedServiceNPUsingTypeParameterForFBDS(
      DeleteListModelToNamedServiceNPDataSource deleteListModelToNamedServiceNPDataSource,
      BaseTypeParameter typeParameterForFBDS)
  async {
    if(_deleteListModelToNamedServiceNPFBDS == null) {
      return await deleteListModelToNamedServiceNPDataSource
          .deleteListModelToNamedServiceNP();
    }
    Response response = _deleteListModelToNamedServiceNPFBDS
        .deleteListModelToNamedServiceNP(typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return deleteListModelToNamedServiceNPDataSource
        .deleteListModelToNamedServiceNP();
  }

  Future<Response> _baseDeleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      DeleteListModelToNamedServiceParameterNamedDataSource<BaseTypeParameter> deleteListModelToNamedServiceParameterNamedDataSource,
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    BaseTypeParameter typeParameterForClone = cloneBaseTypeParameter(typeParameter);
    if(_deleteListModelToNamedServiceParameterNamedFBDS == null) {
      return await deleteListModelToNamedServiceParameterNamedDataSource
          .deleteListModelToNamedServiceParameterNamed(typeParameterForClone);
    }
    Response response = _deleteListModelToNamedServiceParameterNamedFBDS
        .deleteListModelToNamedServiceParameterNamed(typeParameterForClone,typeParameterForFBDS);
    if(response.isExceptionNotNull()) {
      return response;
    }
    return await deleteListModelToNamedServiceParameterNamedDataSource
        .deleteListModelToNamedServiceParameterNamed(typeParameterForClone);
  }
}