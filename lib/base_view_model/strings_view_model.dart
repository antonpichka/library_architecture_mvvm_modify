import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_vm.dart';

class StringsViewModel<T extends Enum>
    extends BaseViewModel<Strings,ListStrings,Default<Strings>,ListDefault<ListStrings,Default<Strings>>,T>
{
  StringsViewModel(
      List<EnumBaseModelVM> listEnumBaseModelVM,
      List<EnumBaseListModelVM> listEnumBaseListModelVM) :
        super.noDataSource(
          listEnumBaseModelVM,
          listEnumBaseListModelVM,
              () => Strings.getDefaultStrings,
              () => ListStrings([]));

  @override
  @nonVirtual
  Strings cloneModel(Strings model) {
    return Strings(model.field);
  }

  @override
  Object thisClass() {
    return this;
  }
}