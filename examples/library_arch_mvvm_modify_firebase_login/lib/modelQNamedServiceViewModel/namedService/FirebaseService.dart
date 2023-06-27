import 'package:firebase_core/firebase_core.dart';

final class FirebaseService {
  Future<void> initializeApp() {
    return Firebase.initializeApp();
  }
}
