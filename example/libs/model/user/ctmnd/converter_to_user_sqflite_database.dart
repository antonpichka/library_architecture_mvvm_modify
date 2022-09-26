import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_model_named_database.dart';
import '../user.dart';
import '../user_sqflite_database.dart';

class ConverterToUserSqfliteDatabase
    extends ConverterToBaseModelNamedDatabase<User,UserSqfliteDatabase>
{
  @override
  UserSqfliteDatabase toBaseModelNamedDatabase(User model) {
    return UserSqfliteDatabase(model.uniqueId, model.name);
  }
}