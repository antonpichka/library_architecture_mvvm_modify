import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForLoading.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class GoogleButtonWidgetListViewModel {
  @protected
  final UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle<User,ListUser<User>> userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle;
  @protected
  final BoolQNoServiceViewModelUsingGetNPForLoading<Bool,ListBool<Bool>> boolQNoServiceViewModelUsingGetNPForLoading;

  GoogleButtonWidgetListViewModel(this.userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle, this.boolQNoServiceViewModelUsingGetNPForLoading);

  Future<void> updateUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralOneTask(
      Function(String message) callbackForException)
  async {
    if(boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        !.getParameterIsField)
    {
      return;
    }
    boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        ?.setParameterIsField = true;
    boolQNoServiceViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    // 1
    BoolTypeParameter? boolTypeParameter = await userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle
        .updateUserToFirebaseAuthAndGoogleSignInServiceNP();
    boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        ?.setParameterIsField = false;
    boolQNoServiceViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    if(boolTypeParameter!
        .exceptionController
        .isExceptionNotEqualsNull())
    {
      callbackForException(boolTypeParameter
          .exceptionController
          .getMessageForViewByException);
      return;
    }
    return;
  }
}