import 'package:library_architecture_mvvm_modify/interface_converters_to_named_model/converter_to_base_list_model_named_database.dart';
import '../list_user_domain.dart';
import '../list_user_sqflite_database.dart';
import '../user_sqflite_database.dart';
import 'converter_to_user_sqflite_database.dart';

class ConverterToListUserSqfliteDatabase extends ConverterToBaseListModelNamedDatabase<ListUserDomain,ListUserSqfliteDatabase> {

  @override
  ListUserSqfliteDatabase toBaseListModelNamedDatabase(ListUserDomain listModelDomain) {
    List<UserSqfliteDatabase> list = List.generate(listModelDomain.getListModelDomain.length, (index) =>
        ConverterToUserSqfliteDatabase().toBaseModelNamedDatabase(listModelDomain.getListModelDomain[index])
    );
    return ListUserSqfliteDatabase(list);
  }

}