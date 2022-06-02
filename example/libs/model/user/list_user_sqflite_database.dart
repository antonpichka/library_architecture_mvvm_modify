import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'list_user_domain.dart';
import 'user_domain.dart';
import 'user_sqflite_database.dart';

class ListUserSqfliteDatabase extends BaseListModelNamedDatabase<ListUserDomain,UserSqfliteDatabase> {

  ListUserSqfliteDatabase(List<UserSqfliteDatabase> listModelNamedDatabase) : super(listModelNamedDatabase);

  @override
  ListUserDomain toBaseListModelDomain() {
    List<UserDomain> list = List.generate(getListModelNamedDatabase.length, (index) {
      return getListModelNamedDatabase[index].toBaseModelDomain();
    });
    return ListUserDomain(list);
  }
}