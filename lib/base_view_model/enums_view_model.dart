import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/enums.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_enums.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_vm.dart';

class EnumsViewModel<T extends Enum>
    extends BaseViewModel<Enums,ListEnums,Default<Enums>,ListDefault<ListEnums,Default<Enums>>,T>
{
  EnumsViewModel(
      List<EnumBaseModelVM> listEnumBaseModelVM,
      List<EnumBaseListModelVM> listEnumBaseListModelVM) :
        super.noDataSource(
          listEnumBaseModelVM,
          listEnumBaseListModelVM,
          () => Enums.getDefaultEnums,
          () => ListEnums([]));

  @override
  @nonVirtual
  Enums cloneModel(Enums model) {
    return Enums(model.field);
  }

  @override
  Object thisClass() {
    return this;
  }
}