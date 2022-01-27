import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_models_using_realized_methods_for_view/base_view_model_using_realized_methods_for_view.dart';

abstract class BaseListOfViewModelsUsingRealizedMethodsForView<T extends Enum> {
  @protected
  Map<T,List<BaseViewModelUsingRealizedMethodsForView>> setupMap = {};

  BaseListOfViewModelsUsingRealizedMethodsForView();

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
          for(BaseViewModelUsingRealizedMethodsForView value in viewModelMethodsForView) {
            value.getViewModel.dispose();
          }
        }
      }
    });
    setupMap = null;
  }

  @protected
  BaseViewModelUsingRealizedMethodsForView getViewModelMethodsForView(T keyToViewModel,int index) {
    if(setupMap == null) {
      return throw Exception("setupMap equals null");
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