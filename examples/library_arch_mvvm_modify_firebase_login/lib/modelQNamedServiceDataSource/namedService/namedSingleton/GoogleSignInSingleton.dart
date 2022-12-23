import 'package:google_sign_in/google_sign_in.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/named_service/named_singleton/base_named_singleton.dart';

class GoogleSignInSingleton
    extends BaseNamedSingleton
{
  static GoogleSignIn? _googleSignIn;

  GoogleSignIn? get getGoogleSignIn {
    iterationForNumberOfExecutedMethodsInThisClass();
    if(_googleSignIn != null) {
      return _googleSignIn;
    }
    _googleSignIn = GoogleSignIn.standard();
    return _googleSignIn;
  }
}