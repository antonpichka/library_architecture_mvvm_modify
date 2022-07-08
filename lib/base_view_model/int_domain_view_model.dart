import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/int_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';

class IntDomainViewModel<T extends Enum,U extends BaseTypeParameter> extends BaseViewModel<IntDomain,ListIntDomain,Default<IntDomain>,ListDefault<ListIntDomain,Default<IntDomain>>,T,U> {
  IntDomainViewModel(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomain,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomain,
      Map<T,BaseIterator> mapEnumAndBaseIterator,
      BaseTypeParameter<T> baseTypeParameterForBaseIterator) :
        super.alternative(
          listEnumBaseModelDomain,
          listEnumBaseListModelDomain,
              () => IntDomain.getDefaultIntDomain,
              () => ListIntDomain([]),
          mapEnumAndBaseIterator,
          baseTypeParameterForBaseIterator);

  @override
  @nonVirtual
  IntDomain cloneModelDomain(IntDomain modelDomain) {
    return IntDomain(modelDomain.field);
  }
}