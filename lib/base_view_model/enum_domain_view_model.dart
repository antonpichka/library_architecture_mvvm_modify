import 'package:library_architecture_mvvm_modify/base_data_source/base_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/enum_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_enum_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

class EnumDomainViewModel extends BaseViewModel<EnumDomain,ListEnumDomain,Default,ListDefault,BaseDataSource<Default,ListDefault>> {
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

}