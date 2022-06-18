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
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import '../model/user/list_user_domain.dart';
import '../model/user/user_domain.dart';

class UserNamedDatabaseViewModel<T extends BaseModelNamedDatabase<UserDomain>,Y extends BaseListModelNamedDatabase<ListUserDomain,T>> extends BaseViewModel<UserDomain,ListUserDomain,T,Y,Enum> {
  UserNamedDatabaseViewModel(
      Object dataSource,
      List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM,
      ConverterToBaseModelNamedDatabase<UserDomain, T> converterToBaseModelNamedDatabase,
      ConverterToBaseListModelNamedDatabase<ListUserDomain, Y> converterToBaseListModelNamedDatabase,
      InsertModelToNamedDatabaseFBDS<UserDomain> insertModelToNamedDatabaseFBDS,
      InsertListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> insertListModelToNamedDatabaseFBDS,
      UpdateModelToNamedDatabaseFBDS<UserDomain> updateModelToNamedDatabaseFBDS,
      UpdateListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> updateListModelToNamedDatabaseFBDS,
      DeleteModelToNamedDatabaseFBDS<UserDomain> deleteModelToNamedDatabaseFBDS,
      DeleteListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> deleteListModelToNamedDatabaseFBDS)
      : super(dataSource,
      listEnumBaseModelDomainVM,
      listEnumBaseListModelDomainVM,
          () => UserDomain.getDefaultUserDomain,
          () => ListUserDomain([]),
      converterToBaseModelNamedDatabase,
      converterToBaseListModelNamedDatabase,
      insertModelToNamedDatabaseFBDS,
      insertListModelToNamedDatabaseFBDS,
      updateModelToNamedDatabaseFBDS,
      updateListModelToNamedDatabaseFBDS,
      deleteModelToNamedDatabaseFBDS,
      deleteListModelToNamedDatabaseFBDS,
      null,
      null);

  @override
  UserDomain cloneModel(UserDomain model) {
    return UserDomain(model.uniqueId,model.name);
  }
}