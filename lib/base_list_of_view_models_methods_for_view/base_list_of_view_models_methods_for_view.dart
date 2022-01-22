import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_models_methods_for_view/base_view_model_methods_for_view.dart';

abstract class BaseListOfViewModelsMethodsForView<T extends Enum> {
  @protected
  Map<T,List<BaseViewModelMethodsForView>> setupMap = {};

  void dispose() {
    if(setupMap.isEmpty) {
      return;
    }
    setupMap.forEach((key, viewModelMethodsForView) {
      if(viewModelMethodsForView != null) {
        if(viewModelMethodsForView.isNotEmpty) {
          for(BaseViewModelMethodsForView value in viewModelMethodsForView) {
            value.getViewModel.dispose();
          }
        }
      }
    });
  }

  @protected
  BaseViewModelMethodsForView getViewModelMethodsForView(T keyToViewModel,int index) {
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