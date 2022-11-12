import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userFirebaseAuth/UserFirebaseAuth.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_list_model_named.dart';

class ListUserFirebaseAuth
    extends BaseListModelNamed<UserFirebaseAuth>
{
  ListUserFirebaseAuth.success(List<UserFirebaseAuth> listModelNamed) : super.success(listModelNamed);
  ListUserFirebaseAuth.exception(BaseException exception) : super.exception(exception);
}