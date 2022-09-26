import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model/user/user.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_get_list_np.dart';
import 'user_sqflite_database_background_model.dart';

class UserSqfliteDatabaseBackgroundModelUsingGetListNP
    extends UserSqfliteDatabaseBackgroundModel
{
  UserSqfliteDatabaseBackgroundModelUsingGetListNP()
      : super.usingMethodSetDataSourceToBodyConstructor()
  {
    setDataSource = UserSqfliteDatabaseDataSourceUsingGetListNP.db;
  }

  @override
  Object thisClass() {
    return this;
  }

  Future<Response<List<User>, BaseException>> getListUserFromSqfliteDatabaseNP() {
    return getListModelFromNamedDatabaseNP();
  }
}