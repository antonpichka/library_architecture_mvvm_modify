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

import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_list_model_named.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_model_named.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model.dart';
/*
  initialize only in view classes
 */
class ManagerForDistributingStreamsBetweenViews
    implements IDispose
{
  static final ManagerForDistributingStreamsBetweenViews ssc = ManagerForDistributingStreamsBetweenViews._();

  Map<Type,Map<Type,Map<Enum,IStreamModel<BaseModelNamed,BaseListModelNamed>>>> _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndIStreamModel = {};
  Map<Type,Map<Enum,IStreamModel<BaseModelNamed,BaseListModelNamed>>> _mapTypeViewAndMapEnumModelNamedDatabaseAndIStreamModel = {};

  ManagerForDistributingStreamsBetweenViews._();
  /*
     call to main.dart or to main_view.dart to method initState();
   */
  void initMapForWidgetAndView(
      {Map<Type,Map<Type,Map<Enum,IStreamModel<BaseModelNamed,BaseListModelNamed>>>> mapModelForWidget,
      Map<Type,Map<Enum,IStreamModel<BaseModelNamed,BaseListModelNamed>>> mapModelForView})
  {
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndIStreamModel = mapModelForWidget ?? {};
    _mapTypeViewAndMapEnumModelNamedDatabaseAndIStreamModel = mapModelForView ?? {};
  }
  /*
     call to main_view.dart to method dispose();
   */
  @override
  void dispose() {
    _disposeForWidget();
    _disposeForView();
  }

  T getIStreamModelForWidget<T extends IStreamModel<BaseModelNamed,BaseListModelNamed>>(
      Type typeView,
      Type typeWidget,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndIStreamModel.containsKey(typeView)) {
      return throw LocalException(this,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndIStreamModel[typeView][typeWidget][enumModelNamedDatabase];
  }

  T getIStreamModelForView<T extends IStreamModel<BaseModelNamed,BaseListModelNamed>>(
      Type typeView,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndIStreamModel.containsKey(typeView)) {
      return throw LocalException(this,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapEnumModelNamedDatabaseAndIStreamModel[typeView][enumModelNamedDatabase];
  }

  void _disposeForWidget() {
    Iterator<Map<Type,Map<Enum,IStreamModel<BaseModelNamed,BaseListModelNamed>>>> iteratorMapTypeWidgetAndMapEnumModelAndIStreamModel = _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndIStreamModel.values.iterator;
    while(iteratorMapTypeWidgetAndMapEnumModelAndIStreamModel.moveNext()) {
      Iterator<Map<Enum,IStreamModel<BaseModelNamed,BaseListModelNamed>>> iteratorMapEnumModelAndIStreamModel =  iteratorMapTypeWidgetAndMapEnumModelAndIStreamModel.current.values.iterator;
      while(iteratorMapEnumModelAndIStreamModel.moveNext()) {
        Iterator<IStreamModel<BaseModelNamed,BaseListModelNamed>> iteratorIStreamModel  = iteratorMapEnumModelAndIStreamModel.current.values.iterator;
        while(iteratorIStreamModel.moveNext()) {
          IStreamModel<BaseModelNamed,BaseListModelNamed> iStreamModel = iteratorIStreamModel.current;
          iStreamModel.dispose();
        }
      }
    }
  }

  void _disposeForView() {
    Iterator<Map<Enum,IStreamModel<BaseModelNamed,BaseListModelNamed>>> iteratorMapEnumModelAndIStreamModel = _mapTypeViewAndMapEnumModelNamedDatabaseAndIStreamModel.values.iterator;
    while(iteratorMapEnumModelAndIStreamModel.moveNext()) {
      Iterator<IStreamModel<BaseModelNamed,BaseListModelNamed>> iteratorIStreamModel  = iteratorMapEnumModelAndIStreamModel.current.values.iterator;
      while(iteratorIStreamModel.moveNext()) {
        IStreamModel<BaseModelNamed,BaseListModelNamed> iStreamModel = iteratorIStreamModel.current;
        iStreamModel.dispose();
      }
    }
  }
}
