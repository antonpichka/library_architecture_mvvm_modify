import '../../model/user/ctmnd/converter_to_list_user_sqflite_database.dart';
import '../../model/user/ctmnd/converter_to_user_sqflite_database.dart';
import '../../model/user/list_user_sqflite_database.dart';
import '../../model/user/user_sqflite_database.dart';
import '../user_named_database_background_model.dart';

abstract class UserSqfliteDatabaseBackgroundModel
    extends UserNamedDatabaseBackgroundModel<UserSqfliteDatabase,ListUserSqfliteDatabase>
{
  UserSqfliteDatabaseBackgroundModel.usingMethodSetDataSourceToBodyConstructor()
      : super.usingMethodSetDataSourceToBodyConstructor(
      ConverterToUserSqfliteDatabase(),
      ConverterToListUserSqfliteDatabase());
}