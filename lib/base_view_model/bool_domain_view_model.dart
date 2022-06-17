import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

class BoolDomainViewModel extends BaseViewModel<BoolDomain,ListBoolDomain,Default<BoolDomain>,ListDefault<ListBoolDomain,Default<BoolDomain>>,Enum> {
  BoolDomainViewModel() : super(
      null,
      [],
      [], () => BoolDomain.getDefaultBoolDomain,
          () => ListBoolDomain([]),
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
  BoolDomain cloneModel(BoolDomain model) {
    return BoolDomain(model.field);
  }

}