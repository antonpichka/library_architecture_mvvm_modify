import 'package:firebase_auth/firebase_auth.dart';

final class FirebaseAuthService {
  static FirebaseAuth? _firebaseAuth;

  FirebaseAuth? get getFirebaseAuth {
    if (_firebaseAuth != null) {
      return _firebaseAuth;
    }
    _firebaseAuth = FirebaseAuth.instance;
    return _firebaseAuth;
  }
}
