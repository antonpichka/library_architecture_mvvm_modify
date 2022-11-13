import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userFirebaseAuthAndGoogleSignIn/ListUserFirebaseAuthAndGoogleSignIn.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userFirebaseAuthAndGoogleSignIn/UserFirebaseAuthAndGoogleSignIn.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model_named.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model_named.dart';

abstract class UserFirebaseAuthAndGoogleSignInViewModel
    extends BaseViewModel<UserFirebaseAuthAndGoogleSignIn,ListUserFirebaseAuthAndGoogleSignIn>
{
  UserFirebaseAuthAndGoogleSignInViewModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource);

  @override
  UserFirebaseAuthAndGoogleSignIn cloneModelNamedForSuccess(
      UserFirebaseAuthAndGoogleSignIn modelNamed)
  {
    return UserFirebaseAuthAndGoogleSignIn.success();
  }

  @override
  ListUserFirebaseAuthAndGoogleSignIn cloneListModelNamedForSuccess(
      ListUserFirebaseAuthAndGoogleSignIn listModelNamed)
  {
    return ListUserFirebaseAuthAndGoogleSignIn.success(listModelNamed.listModelNamed);
  }

  @override
  IStreamModelNamed<UserFirebaseAuthAndGoogleSignIn,ListUserFirebaseAuthAndGoogleSignIn> initIStreamModelForSuccess() {
    return DefaultStreamModelNamed<UserFirebaseAuthAndGoogleSignIn,ListUserFirebaseAuthAndGoogleSignIn>(UserFirebaseAuthAndGoogleSignIn.getUserFirebaseAuthAndGoogleSignIn,ListUserFirebaseAuthAndGoogleSignIn.success([]));
  }

  @override
  IStreamBaseTypeParameter initIStreamBaseTypeParameter() {
    return DefaultStreamBaseTypeParameter();
  }
}