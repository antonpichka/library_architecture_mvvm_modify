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
import 'package:library_architecture_mvvm_modify/utility/i_stream_model_named.dart';
/*
  initialize only in view classes
 */
class ManagerForDistributingStreamsBetweenViews
    implements IDispose
{
  static final ManagerForDistributingStreamsBetweenViews ssc = ManagerForDistributingStreamsBetweenViews._();

  Map<Type,Map<Type,Map<Enum,IStreamModelNamed<BaseModelNamed,BaseListModelNamed>>>> _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedAndIStreamModelNamed = {};
  Map<Type,Map<Enum,IStreamModelNamed<BaseModelNamed,BaseListModelNamed>>> _mapTypeViewAndMapEnumModelNamedAndIStreamModelNamed = {};

  ManagerForDistributingStreamsBetweenViews._();
  /*
     call to main.dart or to main_view.dart to method initState();
   */
  void initMapForWidgetAndView(
      {Map<Type,Map<Type,Map<Enum,IStreamModelNamed<BaseModelNamed,BaseListModelNamed>>>> mapModelForWidget,
      Map<Type,Map<Enum,IStreamModelNamed<BaseModelNamed,BaseListModelNamed>>> mapModelForView})
  {
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedAndIStreamModelNamed = mapModelForWidget ?? {};
    _mapTypeViewAndMapEnumModelNamedAndIStreamModelNamed = mapModelForView ?? {};
  }
  /*
     call to main_view.dart to method dispose();
   */
  @override
  void dispose() {
    _disposeForWidget();
    _disposeForView();
  }

  T getIStreamModelNamedForWidget<T extends IStreamModelNamed<BaseModelNamed,BaseListModelNamed>>(
      Type typeView,
      Type typeWidget,
      Enum enumModelNamed)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedAndIStreamModelNamed.containsKey(typeView)) {
      return throw LocalException(this,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedAndIStreamModelNamed[typeView][typeWidget][enumModelNamed];
  }

  T getIStreamModelNamedForView<T extends IStreamModelNamed<BaseModelNamed,BaseListModelNamed>>(
      Type typeView,
      Enum enumModelNamed)
  {
    if(!_mapTypeViewAndMapEnumModelNamedAndIStreamModelNamed.containsKey(typeView)) {
      return throw LocalException(this,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapEnumModelNamedAndIStreamModelNamed[typeView][enumModelNamed];
  }

  void _disposeForWidget() {
    Iterator<Map<Type,Map<Enum,IStreamModelNamed<BaseModelNamed,BaseListModelNamed>>>> iteratorMapTypeWidgetAndMapEnumModelAndIStreamModelNamed = _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedAndIStreamModelNamed.values.iterator;
    while(iteratorMapTypeWidgetAndMapEnumModelAndIStreamModelNamed.moveNext()) {
      Iterator<Map<Enum,IStreamModelNamed<BaseModelNamed,BaseListModelNamed>>> iteratorMapEnumModelAndIStreamModelNamed =  iteratorMapTypeWidgetAndMapEnumModelAndIStreamModelNamed.current.values.iterator;
      while(iteratorMapEnumModelAndIStreamModelNamed.moveNext()) {
        Iterator<IStreamModelNamed<BaseModelNamed,BaseListModelNamed>> iteratorIStreamModelNamed  = iteratorMapEnumModelAndIStreamModelNamed.current.values.iterator;
        while(iteratorIStreamModelNamed.moveNext()) {
          IStreamModelNamed<BaseModelNamed,BaseListModelNamed> iStreamModelNamed = iteratorIStreamModelNamed.current;
          iStreamModelNamed.dispose();
        }
      }
    }
  }

  void _disposeForView() {
    Iterator<Map<Enum,IStreamModelNamed<BaseModelNamed,BaseListModelNamed>>> iteratorMapEnumModelAndIStreamModelNamed = _mapTypeViewAndMapEnumModelNamedAndIStreamModelNamed.values.iterator;
    while(iteratorMapEnumModelAndIStreamModelNamed.moveNext()) {
      Iterator<IStreamModelNamed<BaseModelNamed,BaseListModelNamed>> iteratorIStreamModelNamed  = iteratorMapEnumModelAndIStreamModelNamed.current.values.iterator;
      while(iteratorIStreamModelNamed.moveNext()) {
        IStreamModelNamed<BaseModelNamed,BaseListModelNamed> iStreamModel = iteratorIStreamModelNamed.current;
        iStreamModel.dispose();
      }
    }
  }
}
