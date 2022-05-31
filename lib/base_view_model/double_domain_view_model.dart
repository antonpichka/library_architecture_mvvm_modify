import 'package:library_architecture_mvvm_modify/base_data_source/base_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/double_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_double_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

class DoubleDomainViewModel extends BaseViewModel<DoubleDomain,ListDoubleDomain,Default,ListDefault,BaseDataSource<Default,ListDefault>> {
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

}