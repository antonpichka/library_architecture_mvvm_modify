import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/enum_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_enum_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

class EnumDomainViewModel extends BaseViewModel<EnumDomain,ListEnumDomain,Default<EnumDomain>,ListDefault<ListEnumDomain,Default<EnumDomain>>,Enum> {
  EnumDomainViewModel() : super(
      null,
      [],
      [], () => EnumDomain.getDefaultEnumDomain,
          () => ListEnumDomain([]),
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
  EnumDomain cloneModel(EnumDomain model) {
    return EnumDomain(model.field);
  }

}