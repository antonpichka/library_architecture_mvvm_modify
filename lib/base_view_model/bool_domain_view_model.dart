import 'package:library_architecture_mvvm_modify/base_data_source/base_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

class BoolDomainViewModel extends BaseViewModel<BoolDomain,ListBoolDomain,Default,ListDefault,BaseDataSource<Default,ListDefault>> {
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
      null
  );

}