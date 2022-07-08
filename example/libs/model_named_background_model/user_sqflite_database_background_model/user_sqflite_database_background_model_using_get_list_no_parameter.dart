import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model/user/user_domain.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_get_list_no_parameter.dart';
import 'user_sqflite_database_background_model.dart';

class UserSqfliteDatabaseBackgroundModelUsingGetListNoParameter extends UserSqfliteDatabaseBackgroundModel {
  UserSqfliteDatabaseBackgroundModelUsingGetListNoParameter() : super(
      UserSqfliteDatabaseDataSourceUsingGetListNoParameter.db,
      null,
      null,
      null,
      null,
      null,
      null
  );

  Future<Response<List<UserDomain>, BaseException>> getListUserFromSqfliteDatabase() {
    return getListModelFromNamedDatabase();
  }
}