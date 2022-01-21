import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

abstract class BaseViewModelFactory<T extends Enum> {
  
  BaseViewModel getViewModel(T keyToViewModel) {
    if(setupMap.containsKey(keyToViewModel)) {
      return setupMap[keyToViewModel];
    }
    return throw Exception("No Value ViewModel");
  }

  void dispose(List<BaseViewModel> list) {
    if(setupMap.isEmpty) {
      return;
    }
    setupMap.forEach((key, viewModel) {
      if(viewModel != null) {
        viewModel.dispose();
      }
    });
    if(list.isEmpty) {
      return;
    }
    for(BaseViewModel viewModel in list) {
      if(viewModel != null) {
        viewModel.dispose();
      }
    }
  }

  @protected
  Map<T,BaseViewModel> get setupMap;
}