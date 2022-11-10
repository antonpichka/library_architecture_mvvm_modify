import 'package:google_sign_in/google_sign_in.dart';

class DefaultGoogleSignInDataSource {
  static GoogleSignIn _googleSignIn;

  GoogleSignIn get getGoogleSignIn {
    if(_googleSignIn != null) {
      return _googleSignIn;
    }
    _googleSignIn = GoogleSignIn.standard();
    return _googleSignIn;
  }
}