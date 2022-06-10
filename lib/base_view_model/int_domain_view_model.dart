import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/int_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

class IntDomainViewModel extends BaseViewModel<IntDomain,ListIntDomain,Default,ListDefault> {
  IntDomainViewModel() : super(
      null,
      [],
      [], () => IntDomain.getDefaultIntDomain,
          () => ListIntDomain([]),
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
  ListIntDomain cloneListModel(ListIntDomain listModel) {
    return ListIntDomain(listModel.getListModelDomain);
  }

  @override
  @nonVirtual
  IntDomain cloneModel(IntDomain model) {
    return IntDomain(model.field);
  }

}