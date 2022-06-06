import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model/user/user_sqflite_database.dart';

class UserSqfliteDatabaseDataSourceUsingDeleteForAll implements DeleteModelToNamedDatabaseThereIsParameterDataSource<UserSqfliteDatabase>
{
  static final UserSqfliteDatabaseDataSourceUsingDeleteForAll db = UserSqfliteDatabaseDataSourceUsingDeleteForAll._();

  UserSqfliteDatabaseDataSourceUsingDeleteForAll._();

  @override
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameterDataSource(UserSqfliteDatabase model) {
    // TODO: implement deleteModelToNamedDatabaseThereIsParameterDataSource
    throw UnimplementedError();
  }
}