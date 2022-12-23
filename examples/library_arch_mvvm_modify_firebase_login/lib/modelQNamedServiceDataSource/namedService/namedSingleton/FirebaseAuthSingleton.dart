import 'package:firebase_auth/firebase_auth.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/named_service/named_singleton/base_named_singleton.dart';

class FirebaseAuthSingleton
    extends BaseNamedSingleton
{
  static FirebaseAuth? _firebaseAuth;

  FirebaseAuth? get getFirebaseAuth {
    iterationForNumberOfExecutedMethodsInThisClass();
    if(_firebaseAuth != null) {
      return _firebaseAuth;
    }
    _firebaseAuth = FirebaseAuth.instance;
    return _firebaseAuth;
  }
}