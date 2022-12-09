import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForLoading.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class GoogleButtonWidgetListViewModel {
  final UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle;
  final BoolQNoServiceViewModelUsingGetNPForLoading _boolQNoServiceViewModelUsingGetNPForLoading;

  GoogleButtonWidgetListViewModel(this._userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle, this._boolQNoServiceViewModelUsingGetNPForLoading);

  Future<void> updateUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralOneTask(
      Function(String message) callbackForException)
  async {
    if(_boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        !.isField)
    {
      return;
    }
    _boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        ?.isField = true;
    _boolQNoServiceViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    // 1
    BoolTypeParameter? boolTypeParameter = await _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle
        .updateUserToFirebaseAuthAndGoogleSignInServiceNP();
    _boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        ?.isField = false;
    _boolQNoServiceViewModelUsingGetNPForLoading
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