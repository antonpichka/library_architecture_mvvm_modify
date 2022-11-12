import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userFirebaseAuthAndGoogleSignIn/UserFirebaseAuthAndGoogleSignIn.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_list_model_named.dart';

class ListUserFirebaseAuthAndGoogleSignIn
    extends BaseListModelNamed<UserFirebaseAuthAndGoogleSignIn>
{
  ListUserFirebaseAuthAndGoogleSignIn.success(List<UserFirebaseAuthAndGoogleSignIn> listModelNamed) : super.success(listModelNamed);
  ListUserFirebaseAuthAndGoogleSignIn.exception(BaseException exception) : super.exception(exception);
}