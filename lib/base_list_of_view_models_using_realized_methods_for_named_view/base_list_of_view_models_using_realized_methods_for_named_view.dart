import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_dispose.dart';
import 'package:library_architecture_mvvm_modify/base_model_view_model_using_realized_methods_certain_types_namely_methods_named/base_model_view_model_using_realized_methods_certain_types_namely_methods_named.dart';

abstract class BaseListOfViewModelsUsingRealizedMethodsForNamedView<T extends Enum> implements BaseDispose {
  @protected
  Map<T,List<BaseModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed>> setupMap = {};

  @override
  void dispose() {
    if(setupMap == null) {
      return;
    }
    if(setupMap.isEmpty) {
      setupMap = null;
      return;
    }
    setupMap.forEach((enums, listModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed) {
      if(listModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed != null) {
        if(listModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed.isNotEmpty) {
          for(BaseModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed modelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed  in listModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed) {
            modelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed.dispose();
            modelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed = null;
          }
        }
      }
    });
    setupMap.clear();
    setupMap = null;
  }

  @protected
  BaseModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed getModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed(T keyToModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed,int index) {
    if(setupMap == null) {
      return throw Exception("setupMap Equals Null");
    }
    if(setupMap.isEmpty) {
      return throw Exception("is Empty Map");
    }
    if(setupMap.containsKey(keyToModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed)) {
      if(setupMap[keyToModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed].isEmpty) {
        return throw Exception("is Empty List");
      }
      return setupMap[keyToModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed][index];
    }
    return throw Exception("no Value List<ViewModelMethodsForView>");
  }
}