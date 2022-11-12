import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userFirebaseAuthAndGoogleSignIn/ListUserFirebaseAuthAndGoogleSignIn.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userFirebaseAuthAndGoogleSignIn/UserFirebaseAuthAndGoogleSignIn.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model.dart';

abstract class UserFirebaseAuthAndGoogleSignInViewModel
    extends BaseViewModel<UserFirebaseAuthAndGoogleSignIn,ListUserFirebaseAuthAndGoogleSignIn,Enum>
{
  UserFirebaseAuthAndGoogleSignInViewModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource);

  @override
  UserFirebaseAuthAndGoogleSignIn cloneModelNamed(
      UserFirebaseAuthAndGoogleSignIn modelNamed)
  {
    return UserFirebaseAuthAndGoogleSignIn.success();
  }

  @override
  IStreamModel<UserFirebaseAuthAndGoogleSignIn,ListUserFirebaseAuthAndGoogleSignIn> initIStreamModel() {
    return DefaultStreamModel(UserFirebaseAuthAndGoogleSignIn.getUserFirebaseAuthAndGoogleSignIn,ListUserFirebaseAuthAndGoogleSignIn.success([]));
  }
}