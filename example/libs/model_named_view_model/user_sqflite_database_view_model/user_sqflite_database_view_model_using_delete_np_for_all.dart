import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_delete_np_for_all.dart';
import 'user_sqflite_database_view_model.dart';

class UserSqfliteDatabaseViewModelUsingDeleteNPForAll
    extends UserSqfliteDatabaseViewModel
{
  UserSqfliteDatabaseViewModelUsingDeleteNPForAll() : super(
      UserSqfliteDatabaseDataSourceUsingDeleteNPForAll.db,
      null,
      null,
      null,
      null,
      null,
      null
  );

  @override
  Object thisClass() {
    return this;
  }

  Future<Response<BaseTypeParameter, BaseException>> deleteUserToSqfliteDatabaseNP()
  {
    return deleteModelToNamedDatabaseNP();
  }
}