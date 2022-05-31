import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'user_domain.dart';

class ListUserDomain extends BaseListModelDomain<ListUserDomain,UserDomain> {

  ListUserDomain(List<UserDomain> list) : super(list);

  @override
  ListUserDomain cloneObject() {
    return ListUserDomain(getListModelDomain);
  }
}