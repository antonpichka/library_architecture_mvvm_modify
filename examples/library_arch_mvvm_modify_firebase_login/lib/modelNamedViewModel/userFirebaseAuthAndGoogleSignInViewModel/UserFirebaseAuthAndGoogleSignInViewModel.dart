import 'package:library_arch_mvvm_modify_firebase_login/model/userFirebaseAuthAndGoogleSignIn/ListUserFirebaseAuthAndGoogleSignIn.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/userFirebaseAuthAndGoogleSignIn/UserFirebaseAuthAndGoogleSignIn.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream.dart';

abstract class UserFirebaseAuthAndGoogleSignInViewModel
    extends BaseViewModel<UserFirebaseAuthAndGoogleSignIn,ListUserFirebaseAuthAndGoogleSignIn,Enum>
{
  UserFirebaseAuthAndGoogleSignInViewModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource);

  @override
  UserFirebaseAuthAndGoogleSignIn cloneModelNamed(
      UserFirebaseAuthAndGoogleSignIn modelNamed)
  {
    return UserFirebaseAuthAndGoogleSignIn();
  }

  @override
  IStream<UserFirebaseAuthAndGoogleSignIn> initAndCloneIStream() {
    return DefaultStream(UserFirebaseAuthAndGoogleSignIn.getUserFirebaseAuthAndGoogleSignIn,ListUserFirebaseAuthAndGoogleSignIn([]));
  }
}