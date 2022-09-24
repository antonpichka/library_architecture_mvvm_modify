import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_background_model/base_background_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

import '../model/user/list_user_domain.dart';
import '../model/user/user_domain.dart';

abstract class UserNamedDatabaseBackgroundModel<T extends BaseModelNamedDatabase<UserDomain>,Y extends BaseListModelNamedDatabase<ListUserDomain,T>>
    extends BaseBackgroundModel<UserDomain,ListUserDomain,T,Y>
{
  UserNamedDatabaseBackgroundModel.usingMethodSetDataSourceToBodyConstructor(
      ConverterToBaseModelNamedDatabase<UserDomain, T> converterToBaseModelNamedDatabase,
      ConverterToBaseListModelNamedDatabase<ListUserDomain, Y> converterToBaseListModelNamedDatabase,)
      : super.usingMethodSetDataSourceToBodyConstructor(
      converterToBaseModelNamedDatabase,
      converterToBaseListModelNamedDatabase);

  @override
  UserDomain cloneModelDomain(UserDomain model) {
    return UserDomain(model.uniqueId,model.name);
  }
}