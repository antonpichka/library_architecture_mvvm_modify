import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'user_domain.dart';

class ListUserDomain extends BaseListModelDomain<UserDomain> {

  ListUserDomain(List<UserDomain> list) : super(list);

  @override
  BaseListModelDomain<BaseModelDomain> cloneObject() {
    return ListUserDomain(getListModelDomain);
  }
}