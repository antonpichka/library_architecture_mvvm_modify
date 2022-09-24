import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';

class BoolDomainViewModel<T extends Enum>
    extends BaseViewModel<BoolDomain,ListBoolDomain,Default<BoolDomain>,ListDefault<ListBoolDomain,Default<BoolDomain>>,T>
{
  BoolDomainViewModel(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomain,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomain) :
        super.noDataSource(
          listEnumBaseModelDomain,
          listEnumBaseListModelDomain,
              () => BoolDomain.getDefaultBoolDomain,
              () => ListBoolDomain([]));

  @override
  @nonVirtual
  BoolDomain cloneModelDomain(BoolDomain modelDomain) {
    return BoolDomain(modelDomain.isField);
  }

  @override
  Object thisClass() {
    return this;
  }
}