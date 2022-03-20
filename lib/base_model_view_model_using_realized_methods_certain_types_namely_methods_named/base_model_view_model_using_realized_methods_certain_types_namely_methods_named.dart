import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_dispose.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

abstract class BaseModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed<T extends BaseViewModel<BaseModelDomain,BaseListModelDomain<BaseModelDomain>>> implements BaseDispose
{
  @protected
  T viewModel;

  BaseModelViewModelUsingRealizedMethodsCertainTypesNamelyMethodsNamed(this.viewModel);

  T get getViewModel {
    return viewModel;
  }

  @override
  void dispose() {
    viewModel = null;
  }

}