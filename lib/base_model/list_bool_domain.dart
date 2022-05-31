import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';

class ListBoolDomain extends BaseListModelDomain<ListBoolDomain,BoolDomain> {
  ListBoolDomain(List<BoolDomain> listModelDomain) : super(listModelDomain);

  @override
  ListBoolDomain cloneObject() {
    return ListBoolDomain(getListModelDomain);
  }
}