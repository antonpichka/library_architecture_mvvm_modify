import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForLoading.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle.dart';

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
    var resultOne = await _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle
        .updateUserToFirebaseAuthAndGoogleSignInServiceNP();
    if(resultOne!
        .exceptionController
        .isExceptionNotEqualsNull())
    {
      callbackForException(resultOne
          .exceptionController
          .getMessageForViewByException);
      _boolQNoServiceViewModelUsingGetNPForLoading
          .getBoolUsingGetNPForLoading
          ?.isField = false;
      _boolQNoServiceViewModelUsingGetNPForLoading
          .notifyStreamBoolUsingGetNPForLoading();
      return;
    }
    _boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        ?.isField = false;
    _boolQNoServiceViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    return;
  }
}