import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

import '../../model/user/list_user_sqflite_database.dart';

class UserSqfliteDatabaseDataSourceUsingGetListNoParameter implements GetListModelFromNamedDatabaseDataSource<ListUserSqfliteDatabase> {
  static final UserSqfliteDatabaseDataSourceUsingGetListNoParameter db = UserSqfliteDatabaseDataSourceUsingGetListNoParameter._();

  UserSqfliteDatabaseDataSourceUsingGetListNoParameter._();

  @override
  Future<Response<ListUserSqfliteDatabase, BaseException>> getListModelFromNamedDatabaseDataSource() {
    // TODO: implement getListModelFromNamedDatabaseDataSource
    throw UnimplementedError();
  }
}