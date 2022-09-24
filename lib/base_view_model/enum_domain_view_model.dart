import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/enum_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_enum_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';

class EnumDomainViewModel<T extends Enum>
    extends BaseViewModel<EnumDomain,ListEnumDomain,Default<EnumDomain>,ListDefault<ListEnumDomain,Default<EnumDomain>>,T>
{
  EnumDomainViewModel(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomain,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomain) :
        super.noDataSource(
          listEnumBaseModelDomain,
          listEnumBaseListModelDomain,
          () => EnumDomain.getDefaultEnumDomain,
          () => ListEnumDomain([]));

  @override
  @nonVirtual
  EnumDomain cloneModelDomain(EnumDomain modelDomain) {
    return EnumDomain(modelDomain.field);
  }

  @override
  Object thisClass() {
    return this;
  }
}