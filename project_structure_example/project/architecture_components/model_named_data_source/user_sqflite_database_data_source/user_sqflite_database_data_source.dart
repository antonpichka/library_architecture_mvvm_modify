import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/data_source.dart';
import '../../model/user/list_user_sqflite_database.dart';
import '../../model/user/user_sqflite_database.dart';

abstract class UserSqfliteDatabaseDataSource extends DataSource<UserSqfliteDatabase,ListUserSqfliteDatabase> {

}