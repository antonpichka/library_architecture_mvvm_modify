import 'package:library_architecture_mvvm_modify/interface_converters_to_named_model/converter_to_base_model_named_database.dart';
import '../user_domain.dart';
import '../user_sqflite_database.dart';

class ConverterToUserSqfliteDatabase extends ConverterToBaseModelNamedDatabase<UserDomain,UserSqfliteDatabase> {

  @override
  UserSqfliteDatabase toBaseModelNamedDatabase(UserDomain modelDomain) {
    return UserSqfliteDatabase(modelDomain.uniqueId, modelDomain.name);
  }

}