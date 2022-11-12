
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_model_named.dart';

class UserFirebaseAuthAndGoogleSignIn
    extends BaseModelNamed
{
  UserFirebaseAuthAndGoogleSignIn.success() : super.success("");
  UserFirebaseAuthAndGoogleSignIn.exception(BaseException exception) : super.exception(exception);

  static UserFirebaseAuthAndGoogleSignIn get getUserFirebaseAuthAndGoogleSignIn => UserFirebaseAuthAndGoogleSignIn.success();
}