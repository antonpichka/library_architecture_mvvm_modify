import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

class UserSqfliteDatabaseDataSourceUsingDeleteNPForAll
    implements DeleteModelToNamedDatabaseNPDataSource
{
  static final UserSqfliteDatabaseDataSourceUsingDeleteNPForAll db = UserSqfliteDatabaseDataSourceUsingDeleteNPForAll._();

  UserSqfliteDatabaseDataSourceUsingDeleteNPForAll._();

  @override
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseNP() {
    // TODO: implement deleteModelToNamedDatabaseThereIsParameterDataSource
    throw UnimplementedError();
  }
}