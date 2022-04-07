import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_dispose.dart';
import 'package:library_architecture_mvvm_modify/base_model_view_model_using_abstract_methods_certain_types_namely_methods_named/base_model_view_model_using_abstract_methods_certain_types_namely_methods_named.dart';

abstract class BaseListOfViewModelForNamedView<T extends Enum> implements BaseDispose {
  @protected
  Map<T,List<BaseModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed>> setupMap = {};

  @override
  void dispose() {
    if(setupMap == null) {
      return;
    }
    if(setupMap.isEmpty) {
      setupMap = null;
      return;
    }
    setupMap.forEach((enums, listModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed) {
      if(listModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed != null) {
        if(listModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed.isNotEmpty) {
          for(BaseModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed modelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed  in listModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed) {
            modelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed.dispose();
            modelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed = null;
          }
        }
      }
    });
    setupMap.clear();
    setupMap = null;
  }

  @protected
  BaseModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed getModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed(
      T keyToModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed,
      int index) 
  {
    if(setupMap == null) {
      return throw Exception("setupMap Equals Null");
    }
    if(setupMap.isEmpty) {
      return throw Exception("is Empty Map");
    }
    if(setupMap.containsKey(keyToModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed)) {
      if(setupMap[keyToModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed].isEmpty) {
        return throw Exception("is Empty List");
      }
      return setupMap[keyToModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed][index];
    }
    return throw Exception("no Value List<ViewModelMethodsForView>");
  }
}