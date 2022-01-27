import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_models_using_realized_methods_for_named_view/base_model_view_model_using_realized_methods_for_named_view.dart';

abstract class BaseListOfViewModelsUsingRealizedMethodsForNamedView<T extends Enum> {
  @protected
  Map<T,List<BaseModelViewModelUsingRealizedMethodsForNamedView>> setupMap = {};

  BaseListOfViewModelsUsingRealizedMethodsForNamedView();

  void dispose() {
    if(setupMap == null) {
      return;
    }
    if(setupMap.isEmpty) {
      setupMap = null;
      return;
    }
    setupMap.forEach((key, viewModelMethodsForView) {
      if(viewModelMethodsForView != null) {
        if(viewModelMethodsForView.isNotEmpty) {
          for(BaseModelViewModelUsingRealizedMethodsForNamedView value in viewModelMethodsForView) {
            value.getViewModel.dispose();
          }
        }
      }
    });
    setupMap = null;
  }

  @protected
  BaseModelViewModelUsingRealizedMethodsForNamedView getModelViewModelUsingRealizedMethodsForNamedView(T keyToViewModel,int index) {
    if(setupMap == null) {
      return throw Exception("setupMap Equals Null");
    }
    if(setupMap.isEmpty) {
      return throw Exception("is Empty Map");
    }
    if(setupMap.containsKey(keyToViewModel)) {
      if(setupMap[keyToViewModel].isEmpty) {
        return throw Exception("is Empty List");
      }
      return setupMap[keyToViewModel][index];
    }
    return throw Exception("No Value List<ViewModelMethodsForView>");
  }
}