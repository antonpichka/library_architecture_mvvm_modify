import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

abstract class BaseViewModelFactory<T extends Enum> {
  
  BaseViewModel getViewModel(T keyToViewModel) {
    if(setupMap.containsKey(keyToViewModel)) {
      return setupMap[keyToViewModel];
    }
    return throw Exception("No Value ViewModel");
  }

  void dispose() {
    if(setupMap.isEmpty) {
      return;
    }
    setupMap.forEach((key, viewModel) {
      if(viewModel != null) {
        viewModel.dispose();
        viewModel = null;
      }
    });
    setupMap.clear();
  }
  
  @protected
  Map<T,BaseViewModel> get setupMap;
}