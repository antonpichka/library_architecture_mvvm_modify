import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userFirebaseAuthAndTempCache/UserFirebaseAuthAndTempCache.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_list_model_named.dart';

class ListUserFirebaseAuthAndTempCache
    extends BaseListModelNamed<UserFirebaseAuthAndTempCache>
{
  ListUserFirebaseAuthAndTempCache.success(List<UserFirebaseAuthAndTempCache> listModelNamed) : super.success(listModelNamed);
  ListUserFirebaseAuthAndTempCache.exception(BaseException exception) : super.exception(exception);
}