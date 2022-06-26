import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model/user/fbds/delete_user_to_sqflite_database_fbds_using_delete_for_all.dart';
import '../../model/user/user_domain.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_delete_for_all.dart';
import 'user_sqflite_database_view_model.dart';

class UserSqfliteDatabaseViewModelUsingDeleteForAll extends UserSqfliteDatabaseViewModel {
  UserSqfliteDatabaseViewModelUsingDeleteForAll() : super(
      UserSqfliteDatabaseDataSourceUsingDeleteForAll.db,
      null,
      null,
      null,
      null,
      DeleteUserToSqfliteDatabaseFBDSUsingDeleteForAll(),
      null
  );

  Future<Response<BaseTypeParameter, BaseException>> setUserAndDeleteUserToSqfliteDatabaseThereIsParameterAndDefaultListUserForFBDSUsingDeleteForAll(
      UserDomain model,
      List<UserDomain> listModelForFBDS)
  {
    return setModelAndDeleteModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(model,listModelForFBDS);
  }
}