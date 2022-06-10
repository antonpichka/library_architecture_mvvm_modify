import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/double_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_double_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

class DoubleDomainViewModel extends BaseViewModel<DoubleDomain,ListDoubleDomain,Default,ListDefault> {
  DoubleDomainViewModel() : super(
      null,
      [],
      [], () => DoubleDomain.getDefaultDoubleDomain,
          () => ListDoubleDomain([]),
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
  ListDoubleDomain cloneListModel(ListDoubleDomain listModel) {
    return ListDoubleDomain(listModel.getListModelDomain);
  }

  @override
  @nonVirtual
  DoubleDomain cloneModel(DoubleDomain model) {
    return DoubleDomain(model.field);
  }

}