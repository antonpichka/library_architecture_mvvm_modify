import 'package:library_arch_mvvm_modify_firebase_login/utility/customDataSource/DefaultFirebaseAuthDataSource.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/customDataSource/DefaultGoogleSignInDataSource.dart';

class DefaultFirebaseAuthAndGoogleSignInDataSource {
  static DefaultFirebaseAuthDataSource _defaultFirebaseAuthDatabaseDataSource;
  static DefaultGoogleSignInDataSource _defaultGoogleSignInDataSource;

  DefaultFirebaseAuthDataSource get getDefaultFirebaseAuthDataSource {
    if(_defaultFirebaseAuthDatabaseDataSource != null) {
      return _defaultFirebaseAuthDatabaseDataSource;
    }
    _defaultFirebaseAuthDatabaseDataSource = DefaultFirebaseAuthDataSource();
    return _defaultFirebaseAuthDatabaseDataSource;
  }

  DefaultGoogleSignInDataSource get getDefaultGoogleSignInDataSource {
    if(_defaultGoogleSignInDataSource != null) {
      return _defaultGoogleSignInDataSource;
    }
    _defaultGoogleSignInDataSource = DefaultGoogleSignInDataSource();
    return _defaultGoogleSignInDataSource;
  }
}