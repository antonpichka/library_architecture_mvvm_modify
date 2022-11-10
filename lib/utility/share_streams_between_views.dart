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

import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream.dart';

/*
  initialize only in view classes
 */
class ShareStreamsBetweenViews {
  static final ShareStreamsBetweenViews ssc = ShareStreamsBetweenViews._();

  Map<Type,Map<Type,Map<Enum,IStream>>> _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndIStream = {};
  Map<Type,Map<Enum,IStream>> _mapTypeViewAndMapEnumModelNamedDatabaseAndIStream = {};

  ShareStreamsBetweenViews._();
  /*
     call to main.dart or to main_view.dart to method initState();
   */
  void setMapForWidgetAndView(
      {Map<Type,Map<Type,Map<Enum,IStream>>> mapModelForWidget,
      Map<Type,Map<Enum,IStream>> mapModelForView})
  {
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndIStream = mapModelForWidget ?? {};
    _mapTypeViewAndMapEnumModelNamedDatabaseAndIStream = mapModelForView ?? {};
  }
  /*
     call to main_view.dart to method dispose();
   */
  void dispose() {
    _disposeForWidget();
    _disposeForView();
  }

  T getIStreamForWidget<T extends IStream>(
      Type typeView,
      Type typeWidget,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndIStream.containsKey(typeView)) {
      return throw LocalException(this,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndIStream[typeView][typeWidget][enumModelNamedDatabase];
  }

  T getIStreamForView<T extends IStream>(
      Type typeView,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndIStream.containsKey(typeView)) {
      return throw LocalException(this,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapEnumModelNamedDatabaseAndIStream[typeView][enumModelNamedDatabase];
  }

  void _disposeForWidget() {
    Iterator<Map<Type,Map<Enum,IStream>>> iteratorMapTypeWidgetAndMapEnumModelAndIStream = _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndIStream.values.iterator;
    while(iteratorMapTypeWidgetAndMapEnumModelAndIStream.moveNext()) {
      Iterator<Map<Enum,IStream>> iteratorMapEnumModelAndIStream =  iteratorMapTypeWidgetAndMapEnumModelAndIStream.current.values.iterator;
      while(iteratorMapEnumModelAndIStream.moveNext()) {
        Iterator<IStream> iteratorIStream  = iteratorMapEnumModelAndIStream.current.values.iterator;
        while(iteratorIStream.moveNext()) {
          IStream iStream = iteratorIStream.current;
          iStream.dispose();
        }
      }
    }
  }

  void _disposeForView() {
    Iterator<Map<Enum,IStream>> iteratorMapEnumModelAndIStream = _mapTypeViewAndMapEnumModelNamedDatabaseAndIStream.values.iterator;
    while(iteratorMapEnumModelAndIStream.moveNext()) {
      Iterator<IStream> iteratorIStream  = iteratorMapEnumModelAndIStream.current.values.iterator;
      while(iteratorIStream.moveNext()) {
        IStream iStream = iteratorIStream.current;
        iStream.dispose();
      }
    }
  }
}
