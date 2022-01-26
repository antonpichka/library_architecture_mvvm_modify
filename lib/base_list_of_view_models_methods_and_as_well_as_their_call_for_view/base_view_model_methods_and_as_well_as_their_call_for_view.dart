import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

abstract class BaseViewModelMethodsAndAsWellAsTheirCallForView<T extends BaseViewModel<BaseModelDomain,BaseListModelDomain<BaseModelDomain>>> {
  @protected
  final T viewModel;
  @protected
  final BuildContext buildContext;

  BaseViewModelMethodsAndAsWellAsTheirCallForView(this.viewModel,this.buildContext);

  T get getViewModel {
    return viewModel;
  }
}