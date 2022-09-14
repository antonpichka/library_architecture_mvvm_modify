import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model/user/fbds/delete_user_to_sqflite_database_fbds_using_delete_for_all.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_delete_for_all.dart';
import 'user_sqflite_database_background_model.dart';

class UserSqfliteDatabaseBackgroundModelUsingDeleteForAll extends UserSqfliteDatabaseBackgroundModel {
  UserSqfliteDatabaseBackgroundModelUsingDeleteForAll() : super(
      UserSqfliteDatabaseBackgroundModelUsingDeleteForAll,
      UserSqfliteDatabaseDataSourceUsingDeleteForAll.db,
      null,
      null,
      null,
      null,
      DeleteUserToSqfliteDatabaseFBDSUsingDeleteForAll(),
      null
  );

  Future<Response<BaseTypeParameter, BaseException>> deleteUserToSqfliteDatabaseThereIsParameter() {
    return deleteModelToNamedDatabaseThereIsParameter();
  }
}