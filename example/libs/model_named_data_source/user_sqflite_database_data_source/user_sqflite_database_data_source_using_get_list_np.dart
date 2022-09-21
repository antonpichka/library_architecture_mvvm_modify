import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model/user/list_user_sqflite_database.dart';

class UserSqfliteDatabaseDataSourceUsingGetListNP
    implements GetListModelFromNamedDatabaseNPDataSource<ListUserSqfliteDatabase>
{
  static final UserSqfliteDatabaseDataSourceUsingGetListNP db = UserSqfliteDatabaseDataSourceUsingGetListNP._();

  UserSqfliteDatabaseDataSourceUsingGetListNP._();

  @override
  Future<Response<ListUserSqfliteDatabase, BaseException>> getListModelFromNamedDatabaseNP() {
    // TODO: implement getListModelFromNamedDatabaseDataSource
    throw UnimplementedError();
  }
}