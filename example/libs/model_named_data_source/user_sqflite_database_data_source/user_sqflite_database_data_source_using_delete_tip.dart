import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model/user/user_sqflite_database.dart';

class UserSqfliteDatabaseDataSourceUsingDeleteTIP
    implements DeleteModelToNamedDatabaseTIPDataSource<UserSqfliteDatabase>
{
  static final UserSqfliteDatabaseDataSourceUsingDeleteTIP db = UserSqfliteDatabaseDataSourceUsingDeleteTIP._();

  UserSqfliteDatabaseDataSourceUsingDeleteTIP._();

  @override
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIP(
      UserSqfliteDatabase model)
  {
    // TODO: implement deleteModelToNamedDatabaseThereIsParameterDataSource
    throw UnimplementedError();
  }
}