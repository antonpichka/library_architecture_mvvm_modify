
import 'package:library_architecture_mvvm_modify/base_view_model/function_view_model/get_list_model_from_database_fvm/get_list_model_from_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/function_view_model/get_list_model_from_database_fvm/get_list_model_from_network_database_fvm.dart';

abstract class GetListModelFromLNDatabaseFVM
    implements
        GetListModelFromLocalDatabaseFVM,
        GetListModelFromNetworkDatabaseFVM {
}