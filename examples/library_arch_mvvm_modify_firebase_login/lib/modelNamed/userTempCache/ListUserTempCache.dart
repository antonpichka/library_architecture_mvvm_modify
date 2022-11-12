import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userTempCache/UserTempCache.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_list_model_named.dart';

class ListUserTempCache
    extends BaseListModelNamed<UserTempCache>
{
  ListUserTempCache.success(List<UserTempCache> listModelNamed) : super.success(listModelNamed);
  ListUserTempCache.exception(BaseException exception) : super.exception(exception);
}