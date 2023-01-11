import 'package:google_sign_in/google_sign_in.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/named_service/base_named_service.dart';

class GoogleSignInService
    extends BaseNamedService
{
  static GoogleSignIn? _googleSignIn;

  GoogleSignIn? get getGoogleSignIn {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(_googleSignIn != null) {
      return _googleSignIn;
    }
    _googleSignIn = GoogleSignIn.standard();
    return _googleSignIn;
  }
}