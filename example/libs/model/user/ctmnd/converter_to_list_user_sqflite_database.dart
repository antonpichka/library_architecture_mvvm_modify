import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_list_model_named_database.dart';
import '../list_user.dart';
import '../list_user_sqflite_database.dart';
import '../user_sqflite_database.dart';
import 'converter_to_user_sqflite_database.dart';

class ConverterToListUserSqfliteDatabase
    extends ConverterToBaseListModelNamedDatabase<ListUser,ListUserSqfliteDatabase>
{
  @override
  ListUserSqfliteDatabase toBaseListModelNamedDatabase(ListUser listModel) {
    List<UserSqfliteDatabase> list = List.generate(listModel.getListModel.length, (index) =>
        ConverterToUserSqfliteDatabase().toBaseModelNamedDatabase(listModel.getListModel[index])
    );
    return ListUserSqfliteDatabase(list);
  }
}