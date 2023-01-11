import 'package:firebase_auth/firebase_auth.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/named_service/base_named_service.dart';

class FirebaseAuthService
    extends BaseNamedService
{
  static FirebaseAuth? _firebaseAuth;

  FirebaseAuth? get getFirebaseAuth {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(_firebaseAuth != null) {
      return _firebaseAuth;
    }
    _firebaseAuth = FirebaseAuth.instance;
    return _firebaseAuth;
  }
}