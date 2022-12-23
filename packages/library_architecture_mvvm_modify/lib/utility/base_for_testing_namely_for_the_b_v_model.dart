import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_for_testing.dart';
import 'package:flutter/foundation.dart';

class BaseForTestingNamelyForTheBVModel
    extends BaseForTesting
{
  final Object? _theClassForWhichTheMethodExecutionCounterWillNotIncreaseAndThisIsTheBaseNamedViewListViewModel;

  BaseForTestingNamelyForTheBVModel(this._theClassForWhichTheMethodExecutionCounterWillNotIncreaseAndThisIsTheBaseNamedViewListViewModel);

  @protected
  @override
  void incrementForNumberOfExecutedMethodsInThisClass() {
    if(_theClassForWhichTheMethodExecutionCounterWillNotIncreaseAndThisIsTheBaseNamedViewListViewModel == null) {
      super.incrementForNumberOfExecutedMethodsInThisClass();
      return;
    }
    if(_theClassForWhichTheMethodExecutionCounterWillNotIncreaseAndThisIsTheBaseNamedViewListViewModel is BaseNamedViewListViewModel) {
      return;
    }
    super.incrementForNumberOfExecutedMethodsInThisClass();
    return;
  }
}