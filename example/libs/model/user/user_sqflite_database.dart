import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'user_domain.dart';

class UserSqfliteDatabase extends BaseModelNamedDatabase<UserDomain> {
  String name;

  UserSqfliteDatabase(String uniqueId,this.name) : super(uniqueId);

  UserSqfliteDatabase fromMap(Map<String,dynamic> map) {
    return UserSqfliteDatabase(
        map[columnUniqueId],
        map[columnName]
    );
  }

  @override
  UserDomain toBaseModelDomain() {
    return UserDomain(uniqueId,name);
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      columnUniqueId : uniqueId,
      columnName : name
    };
  }

  static const String columnUniqueId = "uniqueId";
  static const String columnName = "name";
}