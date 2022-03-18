import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

abstract class BaseModelViewModelUsingRealizedMethodsForNamedView<T extends BaseViewModel<BaseModelDomain,BaseListModelDomain<BaseModelDomain>>> {
  @protected
  T viewModel;

  BaseModelViewModelUsingRealizedMethodsForNamedView(this.viewModel);

  T get getViewModel {
    return viewModel;
  }

  void dispose() {
    viewModel = null;
  }

}