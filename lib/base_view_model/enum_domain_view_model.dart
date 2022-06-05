import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/enum_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_enum_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

class EnumDomainViewModel extends BaseViewModel<EnumDomain,ListEnumDomain,Default,ListDefault,DataSource<Default,ListDefault>> {
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
      null
  );

  @override
  @nonVirtual
  ListEnumDomain cloneListModel(ListEnumDomain listModel) {
    return ListEnumDomain(listModel.getListModelDomain);
  }

  @override
  @nonVirtual
  EnumDomain cloneModel(EnumDomain model) {
    return EnumDomain(model.field);
  }

}