import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_vm.dart';

class IntViewModel<T extends Enum>
    extends BaseViewModel<Int,ListInt,Default<Int>,ListDefault<ListInt,Default<Int>>,T>
{
  IntViewModel(
      List<EnumBaseModelVM> listEnumBaseModelVM,
      List<EnumBaseListModelVM> listEnumBaseListModelVM) :
        super.noDataSource(
          listEnumBaseModelVM,
          listEnumBaseListModelVM,
              () => Int.getDefaultInt,
              () => ListInt([]));

  @override
  @nonVirtual
  Int cloneModel(Int model) {
    return Int(model.field);
  }

  @override
  Object thisClass() {
    return this;
  }
}