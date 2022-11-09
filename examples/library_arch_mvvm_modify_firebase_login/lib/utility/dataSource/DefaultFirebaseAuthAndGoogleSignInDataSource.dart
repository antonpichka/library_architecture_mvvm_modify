import 'package:library_arch_mvvm_modify_firebase_login/utility/dataSource/DefaultFirebaseAuthDataSource.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/dataSource/DefaultGoogleSignInDataSource.dart';

class DefaultFirebaseAuthAndGoogleSignInDataSource {
  static DefaultFirebaseAuthDataSource _defaultFirebaseAuthDatabaseDataSource;
  static DefaultGoogleSignInDataSource _defaultGoogleSignInDataSource;

  DefaultFirebaseAuthDataSource get getDefaultFirebaseAuthDataSource {
    if(_defaultFirebaseAuthDatabaseDataSource == null) {
      _defaultFirebaseAuthDatabaseDataSource = DefaultFirebaseAuthDataSource();
    }
    return _defaultFirebaseAuthDatabaseDataSource;
  }

  DefaultGoogleSignInDataSource get getDefaultGoogleSignInDataSource {
    if(_defaultGoogleSignInDataSource == null) {
      _defaultGoogleSignInDataSource = DefaultGoogleSignInDataSource();
    }
    return _defaultGoogleSignInDataSource;
  }
}