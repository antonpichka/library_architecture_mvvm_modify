import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_all.dart';
import 'user_sqflite_database_background_model.dart';

class UserSqfliteDatabaseBackgroundModelUsingAll extends UserSqfliteDatabaseBackgroundModel {
  UserSqfliteDatabaseBackgroundModelUsingAll() : super(
      UserSqfliteDatabaseDataSourceUsingAll.db,
      null,
      null,
      null,
      null,
      null,
      null
  );
}