import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_background_model/base_background_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

import '../model/user/list_user.dart';
import '../model/user/user.dart';

abstract class UserNamedDatabaseBackgroundModel<T extends BaseModelNamedDatabase<User>,Y extends BaseListModelNamedDatabase<ListUser,T>>
    extends BaseBackgroundModel<User,ListUser,T,Y>
{
  UserNamedDatabaseBackgroundModel.usingMethodSetDataSourceToBodyConstructor(
      ConverterToBaseModelNamedDatabase<User, T> converterToBaseModelNamedDatabase,
      ConverterToBaseListModelNamedDatabase<ListUser, Y> converterToBaseListModelNamedDatabase,)
      : super.usingMethodSetDataSourceToBodyConstructor(
      converterToBaseModelNamedDatabase,
      converterToBaseListModelNamedDatabase);

  @override
  User cloneModel(User model) {
    return User(model.uniqueId,model.name);
  }
}