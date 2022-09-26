import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/double.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_double.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_vm.dart';

class DoubleViewModel<T extends Enum>
    extends BaseViewModel<Double,ListDouble,Default<Double>,ListDefault<ListDouble,Default<Double>>,T>
{
  DoubleViewModel(
      List<EnumBaseModelVM> listEnumBaseModelVM,
      List<EnumBaseListModelVM> listEnumBaseListModelVM) :
        super.noDataSource(
          listEnumBaseModelVM,
          listEnumBaseListModelVM,
          () => Double.getDefaultDouble,
          () => ListDouble([]));

  @override
  @nonVirtual
  Double cloneModel(Double model) {
    return Double(model.field);
  }

  @override
  Object thisClass() {
    return this;
  }
}