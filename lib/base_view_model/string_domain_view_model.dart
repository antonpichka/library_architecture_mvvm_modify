import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_string_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/string_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';

class StringDomainViewModel<T extends Enum,U extends BaseTypeParameter> extends BaseViewModel<StringDomain,ListStringDomain,Default<StringDomain>,ListDefault<ListStringDomain,Default<StringDomain>>,T,U> {
  StringDomainViewModel(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomain,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomain,
      Map<T,BaseIterator> mapEnumAndBaseIterator,
      BaseTypeParameter<T> baseTypeParameterForBaseIterator) :
        super.alternative(
          listEnumBaseModelDomain,
          listEnumBaseListModelDomain,
              () => StringDomain.getDefaultStringDomain,
              () => ListStringDomain([]),
          mapEnumAndBaseIterator,
          baseTypeParameterForBaseIterator);

  @override
  @nonVirtual
  StringDomain cloneModelDomain(StringDomain modelDomain) {
    return StringDomain(modelDomain.field);
  }
}