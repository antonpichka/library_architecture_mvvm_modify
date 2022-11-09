import 'package:firebase_auth/firebase_auth.dart';

class DefaultFirebaseAuthDataSource {
  static FirebaseAuth _firebaseAuth;

  FirebaseAuth get getFirebaseAuth {
    if(_firebaseAuth == null) {
      _firebaseAuth = FirebaseAuth.instance;
    }
    return _firebaseAuth;
  }
}