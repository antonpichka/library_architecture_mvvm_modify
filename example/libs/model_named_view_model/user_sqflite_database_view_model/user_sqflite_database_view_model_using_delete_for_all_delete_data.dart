import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import '../../model/user/user_cidbuacbfvm/delete_user_to_sqflite_database_using_delete_for_all_cidbuacbfvm.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_delete_for_all.dart';
import 'user_sqflite_database_view_model.dart';

class UserSqfliteDatabaseViewModelUsingDeleteForAll extends UserSqfliteDatabaseViewModel {
  UserSqfliteDatabaseViewModelUsingDeleteForAll() : super(
      UserSqfliteDatabaseDataSourceUsingDeleteForAll.db,
      [EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter],
      [],
      null,
      null,
      null,
      null,
      DeleteUserToSqfliteDatabaseUsingDeleteForAllCIDBUACBFVM(),
      null
  );

}