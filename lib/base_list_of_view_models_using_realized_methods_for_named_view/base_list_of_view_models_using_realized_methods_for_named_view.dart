import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_dispose.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_models_using_realized_methods_for_named_view/base_model_view_model_using_realized_methods_for_named_view.dart';

abstract class BaseListOfViewModelsUsingRealizedMethodsForNamedView<T extends Enum> implements BaseDispose {
  @protected
  Map<T,List<BaseModelViewModelUsingRealizedMethodsForNamedView>> setupMap = {};

  @override
  void dispose() {
    if(setupMap == null) {
      return;
    }
    if(setupMap.isEmpty) {
      setupMap = null;
      return;
    }
    setupMap.forEach((enums, listModelViewModelUsingRealizedMethodsForNamedView) {
      if(listModelViewModelUsingRealizedMethodsForNamedView != null) {
        if(listModelViewModelUsingRealizedMethodsForNamedView.isNotEmpty) {
          for(BaseModelViewModelUsingRealizedMethodsForNamedView modelViewModelUsingRealizedMethodsForNamedView in listModelViewModelUsingRealizedMethodsForNamedView) {
            modelViewModelUsingRealizedMethodsForNamedView.getViewModel.dispose();
            modelViewModelUsingRealizedMethodsForNamedView.dispose();
          }
        }
      }
    });
    setupMap.clear();
    setupMap = null;
  }

  @protected
  BaseModelViewModelUsingRealizedMethodsForNamedView getModelViewModelUsingRealizedMethodsForNamedView(T keyToModelViewModelUsingRealizedMethodsForNamedView,int index) {
    if(setupMap == null) {
      return throw Exception("setupMap Equals Null");
    }
    if(setupMap.isEmpty) {
      return throw Exception("is Empty Map");
    }
    if(setupMap.containsKey(keyToModelViewModelUsingRealizedMethodsForNamedView)) {
      if(setupMap[keyToModelViewModelUsingRealizedMethodsForNamedView].isEmpty) {
        return throw Exception("is Empty List");
      }
      return setupMap[keyToModelViewModelUsingRealizedMethodsForNamedView][index];
    }
    return throw Exception("no Value List<ViewModelMethodsForView>");
  }
}