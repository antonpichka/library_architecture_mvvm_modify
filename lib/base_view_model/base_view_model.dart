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
import 'package:library_architecture_mvvm_modify/base_background_model/base_background_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_and_base_list_model_named_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_type_parameter_vm.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_list_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_list_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_list_model_from_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_list_model_from_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_model_from_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_model_from_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_list_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_list_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_list_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_list_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_list_model_named.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_model_named.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

abstract class BaseViewModel<T extends BaseModelNamed,Y extends BaseListModelNamed<T>,EnumIterator extends Enum>
    extends BaseBackgroundModel<T,Y>
    implements IDispose
{
  /* Init List Objects For Model And BaseTypeParameter */
  final List<EnumBaseModelNamedAndBaseListModelNamedVM> _listEnumBaseModelNamedAndBaseListModelNamedVM = List.empty(growable: true);
  final List<EnumBaseTypeParameterVM> _listEnumBaseTypeParameterVM = List.empty(growable: true);

  /* Maps For Model And StreamModel And BaseTypeParameter */
  final Map<EnumBaseModelNamedAndBaseListModelNamedVM,IStreamModel<T,Y>> _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel = {};
  final Map<EnumBaseTypeParameterVM,BaseTypeParameter> _mapEnumBaseTypeParameterVMAndBaseTypeParameter = {};

  /* Init DataSource */
  final bool _isExistsDataSource;

  // Where parameter initObjectSCModel. SCModel parameter IStreams init DefaultStreamController();
  BaseViewModel.thereIsDataSource(Object dataSource)
      : _isExistsDataSource = true, super.thereIsDataSource(dataSource)
  {
    _initListEnumBaseModelNamedAndBaseListModelNamedAndListEnumBaseTypeParameterVM();
    _initMapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream();
    _initMapEnumBaseTypeParameterVMAndBaseTypeParameter();
  }

  // Where parameter initObjectSCModel. SCModel parameter IStreams init DefaultStreamController();
  BaseViewModel.noDataSource(List<EnumBaseModelNamedAndBaseListModelNamedVM> listEnumBaseModelNamedAndBaseListModelNamedVM)
      : _isExistsDataSource = false, super.thereIsDataSource(null)
  {
    _initNoDataSourceListEnumBaseModelNamedAndBaseListModelNamedVM(listEnumBaseModelNamedAndBaseListModelNamedVM);
    _initMapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream();
  }

  bool get _isNotExistsDataSource {
    return !_isExistsDataSource;
  }

  @override
  void dispose() {
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.forEach((
        EnumBaseModelNamedAndBaseListModelNamedVM enumBaseModelAndBaseListModelVM,
        IStreamModel<T,Y> iStreamModel)
    {
      iStreamModel.dispose();
    });
  }
  /// Start Clone **/
  ///
  IStreamModel<T,Y> initIStreamModel();
  /// End Clone **/

  /// Start DataSource **/
  ///
  // start getListNP 4
  @override
  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,'Constructor call thereIsDataSource...: $_isExistsDataSource');
    }
    return super.getListModelFromNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedNPAndSetListModelNamed()
  async {
    Y listModelNamed = await getListModelFromNamedNP();
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP]
        .setListModelNamed = listModelNamed;
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed;
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedNPAndSetListModelNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  async {
    Y listModelNamed = await getListModelFromNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP]
        .setListModelNamed = listModelNamed;
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed;
  }
  // end getListNP 4

  // start getListParameterNamed 8
  @override
  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedParameterNamedUsingStateTypeParameter()
  {
    return getListModelFromNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedParameterNamedAndSetListModelNamed(
      BaseTypeParameter typeParameter)
  async {
    Y listModelNamed = await getListModelFromNamedParameterNamed(typeParameter);
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed]
        .setListModelNamed = listModelNamed;
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed;
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedParameterNamedAndSetListModelNamedUsingStateTypeParameter()
  {
    return getListModelFromNamedParameterNamedAndSetListModelNamed(getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedParameterNamedAndSetListModelNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Y listModelNamed = await getListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed]
        .setListModelNamed = listModelNamed;
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed;
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedParameterNamed),
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Y> getListModelFromNamedParameterNamedAndSetListModelNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getListModelFromNamedParameterNamedAndSetListModelNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end getListParameterNamed 8

  // start getNP 4
  @override
  @protected
  @nonVirtual
  Future<T> getModelFromNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<T> getModelFromNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedNPAndSetModelNamed()
  async {
    T modelNamed = await getModelFromNamedNP();
    setModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP,modelNamed);
    return getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedNPAndSetModelNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  async {
    T modelNamed = await getModelFromNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
    setModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP,modelNamed);
    return getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }
  // end getNP 4

  // start getParameterNamed 8
  @override
  @protected
  @nonVirtual
  Future<T> getModelFromNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<T> getModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedParameterNamedUsingStateTypeParameter()
  {
    return getModelFromNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedParameterNamedAndSetModelNamed(
      BaseTypeParameter typeParameter)
  async {
    T modelNamed = await getModelFromNamedParameterNamed(typeParameter);
    setModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedParameterNamed,modelNamed);
    return getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedParameterNamed);
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedParameterNamedAndSetModelNamedUsingStateTypeParameter()
  {
    return getModelFromNamedParameterNamedAndSetModelNamed(getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedParameterNamedAndSetModelNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    T modelNamed = await getModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
    setModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedParameterNamed,modelNamed);
    return getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedParameterNamed);
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedParameterNamed),
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<T> getModelFromNamedParameterNamedAndSetModelNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getModelFromNamedParameterNamedAndSetModelNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end getParameterNamed 8

  // start insertTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedTIP(
      T modelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedTIP(modelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedTIPUsingTypeParameterForFBDS(
        modelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> insertModelToNamedTIPUsingStateModelNamed()
  {
    return insertModelToNamedTIP(getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response> insertModelToNamedTIPUsingStateModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertModelToNamedTIPUsingTypeParameterForFBDS(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end insertTIP 4

  // start insertNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end insertNP 2

  // start insertParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> insertModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return insertModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.insertModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response> insertModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.insertModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end insertParameterNamed 4

  // start insertListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedTIP(
      Y listModelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedTIP(listModelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedTIPUsingTypeParameterForFBDS(
      Y listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedTIPUsingTypeParameterForFBDS(
        listModelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedTIPUsingStateListModelNamed()
  {
    return insertListModelToNamedTIP(getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertListModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedTIPUsingStateListModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertListModelToNamedTIPUsingTypeParameterForFBDS(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertListModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end insertListTIP 4

  // start insertListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end insertListNP 2

  // start insertListParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return insertListModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.insertListModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response> insertListModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.insertListModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end insertListParameterNamed 4

  // start updateTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedTIP(
      T modelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedTIP(modelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedTIPUsingTypeParameterForFBDS(
        modelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> updateModelToNamedTIPUsingStateModelNamed()
  {
    return updateModelToNamedTIP(getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response> updateModelToNamedTIPUsingStateModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateModelToNamedTIPUsingTypeParameterForFBDS(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end updateTIP 4

  // start updateNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end updateNP 2

  // start updateParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> updateModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return updateModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.updateModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response> updateModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.updateModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end updateParameterNamed 4

  // start updateListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedTIP(
      Y listModelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedTIP(listModelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedTIPUsingTypeParameterForFBDS(
      Y listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedTIPUsingTypeParameterForFBDS(
        listModelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedTIPUsingStateListModelNamed()
  {
    return updateListModelToNamedTIP(getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateListModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedTIPUsingStateListModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateListModelToNamedTIPUsingTypeParameterForFBDS(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateListModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end updateListTIP 4

  // start updateListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end updateListNP 2

  // start updateListParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return updateListModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.updateListModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response> updateListModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.updateListModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end updateListParameterNamed 4

  // start deleteTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedTIP(
      T modelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedTIP(modelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedTIPUsingTypeParameterForFBDS(
        modelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedTIPUsingStateModelNamed()
  {
    return deleteModelToNamedTIP(getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedTIPUsingStateModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteModelToNamedTIPUsingTypeParameterForFBDS(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end deleteTIP 4

  // start deleteNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end deleteNP 2

  // start deleteParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return deleteModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.deleteModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response> deleteModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.deleteModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end deleteParameterNamed 4

  // start deleteListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedTIP(
      Y listModelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedTIP(listModelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedTIPUsingTypeParameterForFBDS(
      Y listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedTIPUsingTypeParameterForFBDS(
        listModelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedTIPUsingStateListModelNamed()
  {
    return deleteListModelToNamedTIP(getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteListModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedTIPUsingStateListModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteListModelToNamedTIPUsingTypeParameterForFBDS(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteListModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end deleteListTIP 4

  // start deleteListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end deleteListNP 2

  // start deleteListParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return deleteListModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.deleteListModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response> deleteListModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.deleteListModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end deleteListParameterNamed 4
  /// End DataSource **/

  /// Start BaseTypeParameter **/
  BaseTypeParameter getTypeParameter(
      EnumBaseTypeParameterVM operation)
  {
    if(!_mapEnumBaseTypeParameterVMAndBaseTypeParameter.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseTypeParameterVMAndBaseTypeParameter[operation];
  }

  @protected
  @nonVirtual
  void setTypeParameter(
      EnumBaseTypeParameterVM operation,
      BaseTypeParameter typeParameter)
  {
    if(!_mapEnumBaseTypeParameterVMAndBaseTypeParameter.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseTypeParameterVMAndBaseTypeParameter[operation] = typeParameter;
  }

  @protected
  @nonVirtual
  void setTypeParameterUsingClone(
      EnumBaseTypeParameterVM operation,
      BaseTypeParameter typeParameter)
  {
    if(!_mapEnumBaseTypeParameterVMAndBaseTypeParameter.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseTypeParameterVMAndBaseTypeParameter[operation] = BaseTypeParameter(typeParameter.getParameter);
  }
  /// End Base/EnumTypeParameter **/

  /// Start IStream **/
  IStreamModel<T,Y> getIStreamModel(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation];
  }
  /// End IStream **/

  /// Start ModelNamed **/
  @protected
  @nonVirtual
  T getModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation].getModelNamed;
  }

  @protected
  @nonVirtual
  Future<T> getFutureModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  async {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation].getModelNamed;
  }

  @protected
  @nonVirtual
  Stream<T> getStreamModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation].getStreamModelNamed;
  }

  @protected
  @nonVirtual
  void setModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation,
      T modelNamed)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation].setModelNamed = modelNamed;
  }

  @protected
  @nonVirtual
  void setModelNamedUsingClone(
      EnumBaseModelNamedAndBaseListModelNamedVM operation,
      T modelNamed)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation].setModelNamed = cloneModelNamed(modelNamed);
  }

  @protected
  @nonVirtual
  void notifyStreamModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation]
        .notifyStreamModelNamed(thisClass);
  }

  @protected
  @nonVirtual
  void notifyStreamModelNamedUsingDelayInSeconds(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation]
        .notifyStreamModelNamedUsingDelayInSeconds(thisClass);
  }
  /// End ModelNamed **/
  
  /// Start ListModelNamed **/
  @protected
  @nonVirtual
  Y getListModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation].getListModelNamed;
  }

  @protected
  @nonVirtual
  Future<Y> getFutureListModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  async {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation].getListModelNamed;
  }

  @protected
  @nonVirtual
  Stream<Y> getStreamListModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation].getStreamListModelNamed;
  }

  @protected
  @nonVirtual
  void setListModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation,
      Y listModelNamed)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation]
        .setListModelNamed = listModelNamed;
  }

  @protected
  @nonVirtual
  void setListModelNamedUsingClone(
      EnumBaseModelNamedAndBaseListModelNamedVM operation,
      Y listModelNamed)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation]
        .setListModelNamed = cloneListModelNamed(listModelNamed);
  }

  @protected
  @nonVirtual
  void notifyStreamListModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation]
        .notifyStreamListModelNamed(thisClass);
  }

  @protected
  @nonVirtual
  void notifyStreamListModelNamedUsingDelayInSeconds(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[operation]
        .notifyStreamListModelNamedUsingDelayInSeconds(thisClass);
  }
  /// End ListModelNamed **/

  void _initListEnumBaseModelNamedAndBaseListModelNamedAndListEnumBaseTypeParameterVM() {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(dataSource is InsertModelToNamedTIPDataSource<T>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.insertModelToNamedTIP);
    }
    if(dataSource is UpdateModelToNamedTIPDataSource<T>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.updateModelToNamedTIP);
    }
    if(dataSource is DeleteModelToNamedTIPDataSource<T>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.deleteModelToNamedTIP);
    }
    if(dataSource is InsertListModelToNamedTIPDataSource<Y>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.insertListModelToNamedTIP);
    }
    if(dataSource is UpdateListModelToNamedTIPDataSource<Y>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.updateListModelToNamedTIP);
    }
    if(dataSource is DeleteListModelToNamedTIPDataSource<Y>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.deleteListModelToNamedTIP);
    }
    if(dataSource is GetModelFromNamedNPDataSource<T>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
    }
    if(dataSource is GetListModelFromNamedNPDataSource<Y>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP);
    }
    if(dataSource is GetModelFromNamedParameterNamedDataSource<T,BaseTypeParameter>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedParameterNamed);
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.getModelFromNamedParameterNamed);
    }
    if(dataSource is GetListModelFromNamedParameterNamedDataSource<Y,BaseTypeParameter>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed);
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.getListModelFromNamedParameterNamed);
    }
    if(dataSource is InsertModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.insertModelToNamedParameterNamed);
    }
    if(dataSource is UpdateModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.updateModelToNamedParameterNamed);
    }
    if(dataSource is DeleteModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.deleteModelToNamedParameterNamed);
    }
    if(dataSource is InsertListModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.insertListModelToNamedParameterNamed);
    }
    if(dataSource is UpdateListModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.updateListModelToNamedParameterNamed);
    }
    if(dataSource is DeleteListModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.deleteListModelToNamedParameterNamed);
    }
  }

  void _initNoDataSourceListEnumBaseModelNamedAndBaseListModelNamedVM(
      List<EnumBaseModelNamedAndBaseListModelNamedVM> listEnumBaseModelNamedAndBaseListModelNamedVM)
  {
    if(_isExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call noDataSource: $_isNotExistsDataSource");
    }
    _listEnumBaseModelNamedAndBaseListModelNamedVM.addAll(listEnumBaseModelNamedAndBaseListModelNamedVM);
  }

  void _initMapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream() {
    for(EnumBaseModelNamedAndBaseListModelNamedVM enumBaseModelNamedAndBaseListModelNamedVM in _listEnumBaseModelNamedAndBaseListModelNamedVM) {
      _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStreamModel[enumBaseModelNamedAndBaseListModelNamedVM] = initIStreamModel();
    }
  }

  void _initMapEnumBaseTypeParameterVMAndBaseTypeParameter() {
    for(EnumBaseTypeParameterVM enumBaseTypeParameterVM in _listEnumBaseTypeParameterVM) {
      _mapEnumBaseTypeParameterVMAndBaseTypeParameter[enumBaseTypeParameterVM] = BaseTypeParameter(null);
    }
  }
}