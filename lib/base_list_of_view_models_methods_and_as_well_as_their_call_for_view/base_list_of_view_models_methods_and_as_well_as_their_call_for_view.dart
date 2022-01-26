import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_models_methods_and_as_well_as_their_call_for_view/base_view_model_methods_and_as_well_as_their_call_for_view.dart';

abstract class BaseListOfViewModelsMethodsAndAsWellAsTheirCallForView<T extends Enum> {
  @protected
  final BuildContext buildContext;
  @protected
  Map<T,List<BaseViewModelMethodsAndAsWellAsTheirCallForView>> setupMap = {};

  BaseListOfViewModelsMethodsAndAsWellAsTheirCallForView(this.buildContext);

  void dispose() {
    if(setupMap.isEmpty) {
      setupMap = null;
      return;
    }
    setupMap.forEach((key, viewModelMethodsForView) {
      if(viewModelMethodsForView != null) {
        if(viewModelMethodsForView.isNotEmpty) {
          for(BaseViewModelMethodsAndAsWellAsTheirCallForView value in viewModelMethodsForView) {
            value.getViewModel.dispose();
          }
        }
      }
    });
    setupMap = null;
  }

  @protected
  BaseViewModelMethodsAndAsWellAsTheirCallForView getViewModelMethodsForView(T keyToViewModel,int index) {
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