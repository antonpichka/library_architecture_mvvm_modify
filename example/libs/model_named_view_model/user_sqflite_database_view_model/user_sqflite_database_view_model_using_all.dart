import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_all.dart';
import 'user_sqflite_database_view_model.dart';

class UserSqfliteDatabaseViewModelUsingAll extends UserSqfliteDatabaseViewModel {
  UserSqfliteDatabaseViewModelUsingAll() : super(
      UserSqfliteDatabaseDataSourceUsingAll.db,
      [EnumBaseModelDomainVM.all],
      [EnumBaseListModelDomainVM.all],
      null,
      null,
      null,
      null,
      null,
      null
  );

}