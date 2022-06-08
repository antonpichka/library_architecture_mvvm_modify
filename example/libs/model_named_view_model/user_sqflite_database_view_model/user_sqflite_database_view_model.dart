import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import '../../model/user/list_user_domain.dart';
import '../../model/user/list_user_sqflite_database.dart';
import '../../model/user/user_ctnm/converter_to_list_user_sqflite_database.dart';
import '../../model/user/user_ctnm/converter_to_user_sqflite_database.dart';
import '../../model/user/user_domain.dart';
import '../../model/user/user_sqflite_database.dart';

class UserSqfliteDatabaseViewModel<T> extends BaseViewModel<UserDomain,ListUserDomain,UserSqfliteDatabase,ListUserSqfliteDatabase,T> {
  UserSqfliteDatabaseViewModel(
      T dataSource,
      List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM,
      InsertModelToNamedDatabaseFBDS<UserDomain> insertModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      InsertListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> insertListModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      UpdateModelToNamedDatabaseFBDS<UserDomain> updateModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      UpdateListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> updateListModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      DeleteModelToNamedDatabaseFBDS<UserDomain> deleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      DeleteListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> deleteListModelToNamedDatabaseThereIsParameterCIDBUACBFVM)
      : super(dataSource,
      listEnumBaseModelDomainVM,
      listEnumBaseListModelDomainVM,
      () => UserDomain.getDefaultUserDomain,
      () => ListUserDomain([]),
      ConverterToUserSqfliteDatabase(),
      ConverterToListUserSqfliteDatabase(),
      insertModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      insertListModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      updateModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      updateListModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      deleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      deleteListModelToNamedDatabaseThereIsParameterCIDBUACBFVM);

  @override
  ListUserDomain cloneListModel(ListUserDomain listModel) {
    return ListUserDomain(listModel.getListModelDomain);
  }

  @override
  UserDomain cloneModel(UserDomain model) {
    return UserDomain(uniqueId: model.uniqueId,name: model.name);
  }
}