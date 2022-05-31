import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/int_domain.dart';

class ListIntDomain extends BaseListModelDomain<ListIntDomain,IntDomain> {
  ListIntDomain(List<IntDomain> listModelDomain) : super(listModelDomain);

  @override
  ListIntDomain cloneObject() {
    return ListIntDomain(getListModelDomain);
  }
}