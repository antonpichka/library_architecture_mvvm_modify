import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/double_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_double_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';

class DoubleDomainViewModel extends BaseViewModel<DoubleDomain,ListDoubleDomain,Default<DoubleDomain>,ListDefault<ListDoubleDomain,Default<DoubleDomain>>,Enum> {
  DoubleDomainViewModel(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomain,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomain) : super(
      null,
      listEnumBaseModelDomain,
      listEnumBaseListModelDomain,
          () => DoubleDomain.getDefaultDoubleDomain,
          () => ListDoubleDomain([]),
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
  DoubleDomain cloneModel(DoubleDomain model) {
    return DoubleDomain(model.field);
  }
}