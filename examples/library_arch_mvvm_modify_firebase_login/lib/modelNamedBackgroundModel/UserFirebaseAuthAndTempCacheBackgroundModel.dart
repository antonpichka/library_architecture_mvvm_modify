import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userFirebaseAuthAndTempCache/ListUserFirebaseAuthAndTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userFirebaseAuthAndTempCache/UserFirebaseAuthAndTempCache.dart';
import 'package:library_architecture_mvvm_modify/base_background_model/base_background_model.dart';

abstract class UserFirebaseAuthAndTempCacheBackgroundModel
    extends BaseBackgroundModel<UserFirebaseAuthAndTempCache,ListUserFirebaseAuthAndTempCache>
{
  UserFirebaseAuthAndTempCacheBackgroundModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource);

  @override
  UserFirebaseAuthAndTempCache cloneModelNamedForSuccess(UserFirebaseAuthAndTempCache modelNamed) {
    return UserFirebaseAuthAndTempCache.success(modelNamed.user);
  }

  @override
  ListUserFirebaseAuthAndTempCache cloneListModelNamedForSuccess(ListUserFirebaseAuthAndTempCache listModelNamed) {
    return ListUserFirebaseAuthAndTempCache.success(listModelNamed.listModelNamed);
  }
}