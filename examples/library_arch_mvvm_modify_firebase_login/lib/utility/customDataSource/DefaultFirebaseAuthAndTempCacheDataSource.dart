import 'package:library_arch_mvvm_modify_firebase_login/utility/customDataSource/DefaultFirebaseAuthDataSource.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/customDataSource/DefaultTempCacheDataSource.dart';

class DefaultFirebaseAuthAndTempCacheDataSource {
  static DefaultFirebaseAuthDataSource _defaultFirebaseAuthDatabaseDataSource;
  static DefaultTempCacheDataSource _defaultTempCacheDataSource;

  DefaultFirebaseAuthDataSource get getDefaultFirebaseAuthDataSource {
    if(_defaultFirebaseAuthDatabaseDataSource != null) {
      return _defaultFirebaseAuthDatabaseDataSource;
    }
    _defaultFirebaseAuthDatabaseDataSource = DefaultFirebaseAuthDataSource();
    return _defaultFirebaseAuthDatabaseDataSource;
  }

  DefaultTempCacheDataSource get getDefaultTempCacheDataSource {
    if(_defaultTempCacheDataSource != null) {
      return _defaultTempCacheDataSource;
    }
    _defaultTempCacheDataSource = DefaultTempCacheDataSource();
    return _defaultTempCacheDataSource;
  }
}