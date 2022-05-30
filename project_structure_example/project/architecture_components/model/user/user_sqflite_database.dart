import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'user_domain.dart';

class UserSqfliteDatabase extends BaseModelNamedDatabase<UserDomain> {
  String name;

  UserSqfliteDatabase(String uniqueId,this.name) : super(uniqueId);

  @override
  UserDomain toBaseModelDomain() {
    // TODO: implement toBaseModelDomain
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }

}