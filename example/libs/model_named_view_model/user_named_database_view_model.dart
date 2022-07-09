import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import '../model/user/list_user_domain.dart';
import '../model/user/user_domain.dart';

class UserNamedDatabaseViewModel<T extends BaseModelNamedDatabase<UserDomain>,Y extends BaseListModelNamedDatabase<ListUserDomain,T>,U extends BaseTypeParameter> extends BaseViewModel<UserDomain,ListUserDomain,T,Y,Enum,U> {
  UserNamedDatabaseViewModel(
      Object dataSource,
      ConverterToBaseModelNamedDatabase<UserDomain, T> converterToBaseModelNamedDatabase,
      ConverterToBaseListModelNamedDatabase<ListUserDomain, Y> converterToBaseListModelNamedDatabase,
      InsertModelToNamedDatabaseFBDS<UserDomain> insertModelToNamedDatabaseFBDS,
      InsertListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> insertListModelToNamedDatabaseFBDS,
      UpdateModelToNamedDatabaseFBDS<UserDomain> updateModelToNamedDatabaseFBDS,
      UpdateListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> updateListModelToNamedDatabaseFBDS,
      DeleteModelToNamedDatabaseFBDS<UserDomain> deleteModelToNamedDatabaseFBDS,
      DeleteListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> deleteListModelToNamedDatabaseFBDS)
      : super.noIterator(dataSource,
          () => UserDomain.getDefaultUserDomain,
          () => ListUserDomain([]),
      converterToBaseModelNamedDatabase,
      converterToBaseListModelNamedDatabase,
      insertModelToNamedDatabaseFBDS,
      insertListModelToNamedDatabaseFBDS,
      updateModelToNamedDatabaseFBDS,
      updateListModelToNamedDatabaseFBDS,
      deleteModelToNamedDatabaseFBDS,
      deleteListModelToNamedDatabaseFBDS);

  @override
  UserDomain cloneModelDomain(UserDomain model) {
    return UserDomain(model.uniqueId,model.name);
  }
}