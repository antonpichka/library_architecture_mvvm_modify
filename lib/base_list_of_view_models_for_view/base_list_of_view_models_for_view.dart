import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_models_for_view/base_view_model_methods_for_view.dart';

abstract class BaseListOfViewModelsForView<T extends Enum> {

  void dispose() {
    if(setupMap.isEmpty) {
      return;
    }
    setupMap.forEach((key, viewModelMethodsForView) {
      if(viewModelMethodsForView != null) {
        viewModelMethodsForView.getViewModel.dispose();
      }
    });
  }

  @protected
  Map<T,BaseViewModelMethodsForView> get setupMap;

  @protected
  BaseViewModelMethodsForView getViewModelMethodsForView(T keyToViewModel) {
    if(setupMap.containsKey(keyToViewModel)) {
      return setupMap[keyToViewModel];
    }
    return throw Exception("No Value ViewModelMethodsForView");
  }
}