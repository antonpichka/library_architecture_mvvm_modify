import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'list_user.dart';
import 'user.dart';
import 'user_sqflite_database.dart';

class ListUserSqfliteDatabase
    extends BaseListModelNamedDatabase<ListUser,UserSqfliteDatabase>
{
  ListUserSqfliteDatabase(List<UserSqfliteDatabase> listModelNamedDatabase) : super(listModelNamedDatabase);

  @override
  ListUser toBaseListModel() {
    List<User> list = List.generate(getListModelNamedDatabase.length, (index) {
      return getListModelNamedDatabase[index].toBaseModel();
    });
    return ListUser(list);
  }
}