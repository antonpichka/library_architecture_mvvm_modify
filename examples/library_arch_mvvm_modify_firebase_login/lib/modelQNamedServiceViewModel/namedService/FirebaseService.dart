import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  Future<void> initializeApp() {
    return Firebase.initializeApp();
  }
}
