import '../../model/user/fbds/delete_user_to_sqflite_database_fbds_using_delete_for_all.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_delete_for_all.dart';
import 'user_sqflite_database_background_model.dart';

class UserSqfliteDatabaseBackgroundModelUsingDeleteForAll extends UserSqfliteDatabaseBackgroundModel {
  UserSqfliteDatabaseBackgroundModelUsingDeleteForAll() : super(
      UserSqfliteDatabaseDataSourceUsingDeleteForAll.db,
      null,
      null,
      null,
      null,
      DeleteUserToSqfliteDatabaseFBDSUsingDeleteForAll(),
      null
  );

}