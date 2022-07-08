import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';

class BoolDomainViewModel<T extends Enum,U extends BaseTypeParameter> extends BaseViewModel<BoolDomain,ListBoolDomain,Default<BoolDomain>,ListDefault<ListBoolDomain,Default<BoolDomain>>,T,U> {
  BoolDomainViewModel(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomain,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomain,
      Map<T,BaseIterator> mapEnumAndBaseIterator,
      BaseTypeParameter<T> baseTypeParameterForBaseIterator) :
        super.alternative(
          listEnumBaseModelDomain,
          listEnumBaseListModelDomain,
              () => BoolDomain.getDefaultBoolDomain,
              () => ListBoolDomain([]),
          mapEnumAndBaseIterator,
          baseTypeParameterForBaseIterator);

  @override
  @nonVirtual
  BoolDomain cloneModelDomain(BoolDomain modelDomain) {
    return BoolDomain(modelDomain.isField);
  }
}