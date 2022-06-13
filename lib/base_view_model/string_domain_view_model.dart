import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_string_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/string_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

class StringDomainViewModel extends BaseViewModel<StringDomain,ListStringDomain,Default,ListDefault,Enum> {
  StringDomainViewModel() : super(
      null,
      [],
      [], () => StringDomain.getDefaultStringDomain,
          () => ListStringDomain([]),
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
  ListStringDomain cloneListModel(ListStringDomain listModel) {
    return ListStringDomain(listModel.getListModelDomain);
  }

  @override
  @nonVirtual
  StringDomain cloneModel(StringDomain model) {
    return StringDomain(model.field);
  }

}