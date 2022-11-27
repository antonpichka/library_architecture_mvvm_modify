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
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_background_model/base_model_q_named_service_background_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_list_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_list_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_list_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

abstract class BaseModelQNamedServiceViewModel<T extends BaseModel,Y extends BaseListModel<T>>
    extends BaseModelQNamedServiceBackgroundModel<T,Y>
    implements IDispose
{
  /* List and Map For IStreamModel */
  final List<EnumBaseModelAndBaseListModelVM> _listEnumBaseModelAndBaseListModelVM = List.empty(growable: true);
  final Map<EnumBaseModelAndBaseListModelVM,IStreamModel<T,Y>> _mapEnumBaseModelAndBaseListModelVMAndIStreamModel = {};

  /* Init DataSource */
  final bool _isExistsDataSource;

  BaseModelQNamedServiceViewModel.thereIsDataSource(Object dataSource)
      : _isExistsDataSource = true, super.thereIsDataSource(dataSource)
  {
    _initThereIsDataSourceListEnumBaseModelAndBaseListModelVM();
    _initMapEnumBaseModelAndBaseListModelVMAndIStreamModel();
  }

  BaseModelQNamedServiceViewModel.noDataSource(List<EnumBaseModelAndBaseListModelVM> list)
      : _isExistsDataSource = false, super.thereIsDataSource(null)
  {
    _initNoDataSourceListEnumBaseModelAndBaseListModelVM(list);
    _initMapEnumBaseModelAndBaseListModelVMAndIStreamModel();
  }

  bool get _isNotExistsDataSource {
    return !_isExistsDataSource;
  }

  @override
  void dispose() {
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel.forEach((
        EnumBaseModelAndBaseListModelVM enumBaseModelAndBaseListModelVM,
        IStreamModel<T,Y> iStreamModel)
    {
      iStreamModel.dispose();
    });
  }

  // Default class: return DefaultStreamModel(Object.success(""),ListObject.success([]));
  IStreamModel<T,Y> initIStreamModelForSuccess();

  /// Start DataSource **/
  ///
  // start getListNP 4
  @override
  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedServiceNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,'Constructor call thereIsDataSource...: $_isExistsDataSource');
    }
    return super.getListModelFromNamedServiceNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedServiceNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedServiceNPAndSetListModel()
  async {
    Y listModelNamed = await getListModelFromNamedServiceNP();
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceNP]
        .setListModel = listModelNamed;
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceNP].getListModel;
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedServiceNPAndSetListModelUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  async {
    Y listModelNamed = await getListModelFromNamedServiceNPUsingTypeParameterForFBDS(typeParameterForFBDS);
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceNP]
        .setListModel = listModelNamed;
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceNP].getListModel;
  }
  // end getListNP 4

  // start getListParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedServiceParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedServiceParameterNamedAndSetListModel(
      BaseTypeParameter typeParameter)
  async {
    Y listModel = await getListModelFromNamedServiceParameterNamed(typeParameter);
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed]
        .setListModel = listModel;
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed].getListModel;
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedServiceParameterNamedAndSetListModelUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Y listModel = await getListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed]
        .setListModel = listModel;
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed].getListModel;
  }
  // end getListParameterNamed 4

  // start getNP 4
  @override
  @protected
  @nonVirtual
  Future<T> getModelFromNamedServiceNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedServiceNP();
  }

  @override
  @protected
  @nonVirtual
  Future<T> getModelFromNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedServiceNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedServiceNPAndSetModel()
  async {
    T model = await getModelFromNamedServiceNP();
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP,model);
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedServiceNPAndSetModelUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  async {
    T model = await getModelFromNamedServiceNPUsingTypeParameterForFBDS(typeParameterForFBDS);
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP,model);
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }
  // end getNP 4

  // start getParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<T> getModelFromNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedServiceParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<T> getModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedServiceParameterNamedAndSetModel(
      BaseTypeParameter typeParameter)
  async {
    T model = await getModelFromNamedServiceParameterNamed(typeParameter);
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceParameterNamed,model);
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceParameterNamed);
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedServiceParameterNamedAndSetModelUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    T model = await getModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceParameterNamed,model);
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceParameterNamed);
  }
  // end getParameterNamed 4

  // start insertTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedServiceTIP(
      T model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceTIP(model);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedServiceTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceTIPUsingTypeParameterForFBDS(
        model,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> insertModelToNamedServiceTIPUsingStateModel()
  {
    return insertModelToNamedServiceTIP(getModel(EnumBaseModelAndBaseListModelVM.insertModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Response> insertModelToNamedServiceTIPUsingStateModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertModelToNamedServiceTIPUsingTypeParameterForFBDS(
        getModel(EnumBaseModelAndBaseListModelVM.insertModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end insertTIP 4

  // start insertNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedServiceNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end insertNP 2

  // start insertParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertParameterNamed 2

  // start insertListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedServiceTIP(
      Y listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceTIP(listModel);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedServiceTIPUsingTypeParameterForFBDS(
      Y listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        listModel,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedServiceTIPUsingStateListModel()
  {
    return insertListModelToNamedServiceTIP(getListModel(EnumBaseModelAndBaseListModelVM.insertListModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedServiceTIPUsingStateListModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        getListModel(EnumBaseModelAndBaseListModelVM.insertListModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end insertListTIP 4

  // start insertListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedServiceNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end insertListNP 2

  // start insertListParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertListParameterNamed 2

  // start updateTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedServiceTIP(
      T model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceTIP(model);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedServiceTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceTIPUsingTypeParameterForFBDS(
        model,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> updateModelToNamedServiceTIPUsingStateModel()
  {
    return updateModelToNamedServiceTIP(getModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Response> updateModelToNamedServiceTIPUsingStateModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateModelToNamedServiceTIPUsingTypeParameterForFBDS(
        getModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end updateTIP 4

  // start updateNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedServiceNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end updateNP 2

  // start updateParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateParameterNamed 2

  // start updateListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedServiceTIP(
      Y listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceTIP(listModel);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedServiceTIPUsingTypeParameterForFBDS(
      Y listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        listModel,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedServiceTIPUsingStateListModel()
  {
    return updateListModelToNamedServiceTIP(getListModel(EnumBaseModelAndBaseListModelVM.updateListModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedServiceTIPUsingStateListModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        getListModel(EnumBaseModelAndBaseListModelVM.updateListModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end updateListTIP 4

  // start updateListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedServiceNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end updateListNP 2

  // start updateListParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateListParameterNamed 2

  // start deleteTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedServiceTIP(
      T model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceTIP(model);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedServiceTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceTIPUsingTypeParameterForFBDS(
        model,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedServiceTIPUsingStateModel()
  {
    return deleteModelToNamedServiceTIP(getModel(EnumBaseModelAndBaseListModelVM.deleteModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedServiceTIPUsingStateModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteModelToNamedServiceTIPUsingTypeParameterForFBDS(
        getModel(EnumBaseModelAndBaseListModelVM.deleteModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end deleteTIP 4

  // start deleteNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedServiceNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end deleteNP 2

  // start deleteParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteParameterNamed 2

  // start deleteListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedServiceTIP(
      Y listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceTIP(listModel);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedServiceTIPUsingTypeParameterForFBDS(
      Y listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        listModel,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedServiceTIPUsingStateListModel()
  {
    return deleteListModelToNamedServiceTIP(getListModel(EnumBaseModelAndBaseListModelVM.deleteListModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedServiceTIPUsingStateListModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteListModelToNamedServiceTIPUsingTypeParameterForFBDS(
        getListModel(EnumBaseModelAndBaseListModelVM.deleteListModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end deleteListTIP 4

  // start deleteListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedServiceNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedServiceNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end deleteListNP 2

  // start deleteListParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedServiceParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteListParameterNamed 2
  /// End DataSource **/

  /// Start IStreamModel **/
  @protected
  @nonVirtual
  U getIStreamModel<U extends IStreamModel<T,Y>>(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation];
  }
  /// End IStreamModel **/

  /// Start Model **/
  @protected
  @nonVirtual
  Future<T> getFutureModel(
      EnumBaseModelAndBaseListModelVM operation)
  async {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation].getModel;
  }

  @protected
  @nonVirtual
  Object getStreamModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation].getStreamModel;
  }

  @protected
  @nonVirtual
  T getModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation].getModel;
  }

  @protected
  @nonVirtual
  void setModel(
      EnumBaseModelAndBaseListModelVM operation,
      T model)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        .setModel = model;
  }

  @protected
  @nonVirtual
  void setCloneModel(
      EnumBaseModelAndBaseListModelVM operation,
      T model)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        .setModel = cloneModelForSuccess(model);
  }

  @protected
  @nonVirtual
  void notifyStreamModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        .notifyStreamModel(thisClass);
  }

  @protected
  @nonVirtual
  void notifyStreamDelayInSecondsModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        .notifyStreamDelayInSecondsModel(thisClass);
  }
  /// End Model **/
  
  /// Start ListModel **/
  @protected
  @nonVirtual
  Future<Y> getFutureListModel(
      EnumBaseModelAndBaseListModelVM operation)
  async {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation].getListModel;
  }

  @protected
  @nonVirtual
  Object getStreamListModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation].getStreamListModel;
  }

  @protected
  @nonVirtual
  Y getListModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation].getListModel;
  }

  @protected
  @nonVirtual
  void setListModel(
      EnumBaseModelAndBaseListModelVM operation,
      Y listModel)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        .setListModel = listModel;
  }

  @protected
  @nonVirtual
  void setCloneListModel(
      EnumBaseModelAndBaseListModelVM operation,
      Y listModel)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        .setListModel = cloneListModelForSuccess(listModel);
  }

  @protected
  @nonVirtual
  void notifyStreamListModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        .notifyStreamListModel(thisClass);
  }

  @protected
  @nonVirtual
  void notifyStreamDelayInSecondsListModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        .notifyStreamDelayInSecondsListModel(thisClass);
  }
  /// End ListModel **/

  void _initThereIsDataSourceListEnumBaseModelAndBaseListModelVM() {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(modelQNamedServiceDataSource is InsertModelToNamedServiceTIPDataSource<T>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.insertModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is UpdateModelToNamedServiceTIPDataSource<T>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is DeleteModelToNamedServiceTIPDataSource<T>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.deleteModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is InsertListModelToNamedServiceTIPDataSource<Y>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.insertListModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is UpdateListModelToNamedServiceTIPDataSource<Y>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.updateListModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is DeleteListModelToNamedServiceTIPDataSource<Y>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.deleteListModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is GetModelFromNamedServiceNPDataSource<T>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
    }
    if(modelQNamedServiceDataSource is GetListModelFromNamedServiceNPDataSource<Y>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceNP);
    }
    if(modelQNamedServiceDataSource is GetModelFromNamedServiceParameterNamedDataSource<T,BaseTypeParameter>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceParameterNamed);
    }
    if(modelQNamedServiceDataSource is GetListModelFromNamedServiceParameterNamedDataSource<Y,BaseTypeParameter>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
    }
  }

  void _initNoDataSourceListEnumBaseModelAndBaseListModelVM(
      List<EnumBaseModelAndBaseListModelVM> listEnumBaseModelAndBaseListModelVM)
  {
    if(_isExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call noDataSource: $_isNotExistsDataSource");
    }
    _listEnumBaseModelAndBaseListModelVM.addAll(listEnumBaseModelAndBaseListModelVM);
  }

  void _initMapEnumBaseModelAndBaseListModelVMAndIStreamModel() {
    for(EnumBaseModelAndBaseListModelVM enumBaseModelAndBaseListModelVM in _listEnumBaseModelAndBaseListModelVM) {
      _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[enumBaseModelAndBaseListModelVM] = initIStreamModelForSuccess();
    }
  }
}