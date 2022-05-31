import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/double_domain.dart';

class ListDoubleDomain extends BaseListModelDomain<ListDoubleDomain,DoubleDomain> {
  ListDoubleDomain(List<DoubleDomain> listModelDomain) : super(listModelDomain);

  @override
  ListDoubleDomain cloneObject() {
    return ListDoubleDomain(getListModelDomain);
  }
}