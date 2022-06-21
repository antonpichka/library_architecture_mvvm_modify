import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/int_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';

class IntDomainViewModel extends BaseViewModel<IntDomain,ListIntDomain,Default<IntDomain>,ListDefault<ListIntDomain,Default<IntDomain>>,Enum> {
  IntDomainViewModel(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomain,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomain) : super(
      null,
      listEnumBaseModelDomain,
      listEnumBaseListModelDomain,
          () => IntDomain.getDefaultIntDomain,
          () => ListIntDomain([]),
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      null
  );

  @override
  @nonVirtual
  IntDomain cloneModel(IntDomain model) {
    return IntDomain(model.field);
  }
}