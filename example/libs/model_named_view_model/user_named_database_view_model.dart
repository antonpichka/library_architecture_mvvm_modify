import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import '../model/user/list_user_domain.dart';
import '../model/user/user_domain.dart';

abstract class UserNamedDatabaseViewModel<T extends BaseModelNamedDatabase<UserDomain>,Y extends BaseListModelNamedDatabase<ListUserDomain,T>>
    extends BaseViewModel<UserDomain,ListUserDomain,T,Y,Enum>
{
  UserNamedDatabaseViewModel.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor(
      ConverterToBaseModelNamedDatabase<UserDomain, T> converterToBaseModelNamedDatabase,
      ConverterToBaseListModelNamedDatabase<ListUserDomain, Y> converterToBaseListModelNamedDatabase)
      : super.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor(
      converterToBaseModelNamedDatabase,
      converterToBaseListModelNamedDatabase,
          () => UserDomain.getDefaultUserDomain,
          () => ListUserDomain([]));

  @override
  UserDomain cloneModelDomain(UserDomain model) {
    return UserDomain(model.uniqueId,model.name);
  }
}