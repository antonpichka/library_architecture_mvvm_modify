import 'package:google_sign_in/google_sign_in.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/named_service/named_singleton/base_named_singleton.dart';

class GoogleSignInSingleton
    extends BaseNamedSingleton
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